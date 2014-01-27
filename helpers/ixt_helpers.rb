module IxtHelpers
  def page_name(page)
    page.path
      .sub(page.ext, '')
      .gsub('/', '-')
  end

  def all_pages(options = {})
    defaults = { :exclude_current => false, :exclude_index => false }
    options = defaults.merge(options)

    sitemap.resources.select do |resource|
      resource.ext == '.html' &&
      !resource.path.match(/(assets)/) && # exclude html files in assets directory
      !(options[:exclude_current] && resource.path == current_page.path) && # exclude current page
      !(options[:exclude_index] && resource.path.match(/^index/)) # exclude index page
    end
  end

  def pages_menu(options = {})
    items = all_pages(options)
      .sort_by { |page| page.data.position.to_i }
      .reject {|page| page.data.position.to_i < 0}
      .map do |page|
      "<li class='navbar__item #{"active" if (page.data.title || page_name(page)) == current_page.data.title}'><a class='navbar__link' href='#{page.path}'>#{page.data.title || page_name(page)}</a></li>"
    end
    "#{items.join('')}"
  end

  def javascript_include_current(path, options = {})
    file_path = File.join(config[:source], config[:js_dir], current_page.data.root || page_name(current_page), path)
    http_path = File.join(current_page.data.root || page_name(current_page), path)
    # Only include the file if it exists at the given path. We check this using
    # a glob pattern, because passing file extensions is optional for the helper,
    # but mandatory for the file system check.
    javascript_include_tag http_path, options unless Dir["#{file_path}*"].empty?
  end

  def stylesheet_link_current(path, options = {})
    file_path = File.join(config[:source], config[:css_dir], current_page.data.root || page_name(current_page), path)
    http_path = File.join(current_page.data.root || page_name(current_page), path)
    # Only include the file if it exists at the given path. We check this using
    # a glob pattern, because passing file extensions is optional for the helper,
    # but mandatory for the file system check.
    stylesheet_link_tag http_path, options unless Dir["#{file_path}*"].empty?
  end

  def render_templates_current
    render_templates(File.join(current_page.data.root || page_name(current_page)))
  end

  def render_templates(dir)
    template_dir = File.join(config[:source], config[:js_dir], dir, 'templates')
    templates = Dir[File.join(template_dir, '**', '*.html')]
    output = []
    templates.each do |template|
      name = template
             .split(template_dir).last
             .sub(/^\//, '')
             .sub(File.extname(template), '')
             .gsub('/', '-')
      content = File.open(template, "r") {|f| f.read }
      output << "<script type=\"text/template\" id=\"template-#{name}\">\n#{content}\n</script>"
    end
    output.join("\n")
  end
end

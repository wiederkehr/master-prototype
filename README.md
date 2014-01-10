# Master Prototype

**Prototype of science visualizations as part of my practical work for the Master of Arts in Design.**

## Technology

The Master Prototype is build with [Middleman](http://middlemanapp.com/), [Marionette](http://marionettejs.com/), [Backbone](http://backbonejs.org/), [Underscore](http://underscorejs.org/), [jQuery](http://jquery.com/), [D3](http://d3js.org/) and written in [CoffeeScript](http://coffeescript.org/), and [Sass](http://sass-lang.com/). 
Components are handled using [Bower](http://bower.io/) and the repository is hosted on [Bitbucket](https://bitbucket.org).

## Installation

1. Make sure you have [npm](https://npmjs.org/), [middleman](http://middlemanapp.com/), and [bower](http://bower.io/) installed
2. Change to the application directory
3. Run `npm install` in Terminal
4. Run `bower install` in Terminal
5. Run `rake server` in Terminal
6. The application is running on port [4567](http://0.0.0.0:4567/)

## Development

### Adding front-end libraries (a.k.a Bower Components)

Thanks to Bower you'll (almost) never have to track down and download front-end libraries yourself anymore. Any JS/CSS dependencies are specified in `component.json`.

To quickly add a new library run `bower install jquery --save`
The `--save` flag automatically adds the library to `component.json`.
You can also edit `component.json` yourself and then run `bower install`

### Running a local development server

To start the local development server run `rake server`
The application is running on port [4567](http://0.0.0.0:4567/)

### Build

To build the project run `rake build`
To build and pack it up in a ZIP archive run `rake pack_build`

### Deployment

Configure the different staging and production remotes in `remotes.yml`.
To deploy to each remote run `rake deploy:staging`
Or `rake deploy:production`

## License

Copyright (c) 2014 Benjamin Wiederkehr

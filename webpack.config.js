var webpack = require('webpack');

var cssimport = require('postcss-import');
var customProperties = require('postcss-custom-properties');
var autoprefixer = require('autoprefixer');
var csswring = require('csswring');
var cssnested = require('postcss-nested');

module.exports = {
  entry: './src/index.js',
  output: {
    path: __dirname + '/build/',
    filename: 'bundle.js'
  },
  devtool: 'inline-source-map',
  plugins: [
    new webpack.ProvidePlugin({
      riot: 'riot'
    })
  ],
  module: {
    rules:[
      {
        test: /\.tag$/,
        enforce: "pre",
        use:[
          {loader: 'riotjs-loader',options: {type: 'babel'}}
        ]
      },
      {
        test: /bootstrap\/js\//,
        loader: 'imports?jQuery=jquery'
      },
      {
        // For all .css files except from node_modules
        test: /\.css$/,
        exclude: /node_modules/,
        use: [
          'style-loader',
          { loader: 'css-loader', options: { modules: true } },
          {
            loader: 'postcss-loader',
            options: {
              plugins: (loader) => [
                cssimport, 
                cssnested, 
                customProperties, 
                autoprefixer, 
                csswring
              ]
            }
          }
        ]
      },
      {
        // For all .css files in node_modules
        test: /\.css$/,
        include: /node_modules/,
        use: [
          'style-loader', 'css-loader',
          {
            loader: 'postcss-loader',
            options: {
              plugins: (loader) => [
                cssimport, 
                cssnested, 
                customProperties, 
                autoprefixer, 
                csswring
              ]
            }
          }
        ],

      },
      
      {
        test: /\.js|\.tag$/,
        use: [ 
          { 
            loader: 'babel-loader', 
            options: { 
              presets: ['es2015'] 
            } 
          } 
        ],
        exclude: /node_modules/,
      },
      {
        test: /\.(png|woff|woff2|eot|ttf|svg)$/,
        loader: 'url-loader?limit=100000'
      }
    ],
  },
  devServer: {
    contentBase: './build/',
    port: 1338,
    hot: true,
    inline: true
  }
};
/*
 postcss: [cssimport, cssnested, customProperties, autoprefixer, 
  csswring],
  */
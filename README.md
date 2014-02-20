AngularJS-demo
==============

This contains demo code that I've been using to give a basic introduction to
AngularJS at meetups.

There are several branches, as steps, that walk through from static html, to
pure JS, jQuery and finally several Angular examples.

It includes a Sinatra app to provide a basic API backend. The final step, which
is what master is, contains a basic Restangular demo.


Getting started
---------------

First install the needed gems via Bundler.

```
bundle install
```

Then you will need to setup the database and seed it with example data.

```
rake db:setup
ruby seed.rb 100
```
_Note: you can pass the number of items you wish to create as a parameter to seed.rb (instead of 100 for example)_

Then boot the application and browse to http://localhost:4567

```
ruby app.rb
# Then open http://localhost:4567 in your browser
```

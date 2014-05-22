class Router extends Ember.Router with location: ENV.locationType

Router.map -> 
  @route "index", path: ""
  @route "some-page"

`export default Router`


# var Router = Ember.Router.extend({
#   location: ENV.locationType
# });

# Router.map(function() {
#   this.route("index");
#   this.route("some-page");
# });

# export default Router;
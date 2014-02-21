class RailsBackboneSimpleCRUD.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    title: null
    content: null

class RailsBackboneSimpleCRUD.Collections.PostsCollection extends Backbone.Collection
  model: RailsBackboneSimpleCRUD.Models.Post
  url: '/posts'

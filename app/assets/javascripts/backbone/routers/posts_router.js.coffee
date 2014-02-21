class RailsBackboneSimpleCRUD.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new RailsBackboneSimpleCRUD.Collections.PostsCollection()
    @posts.reset options.posts

  routes:
    "new"      : "newPost"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newPost: ->
    @view = new RailsBackboneSimpleCRUD.Views.Posts.NewView(collection: @posts)
    $("#posts").html(@view.render().el)

  index: ->
    @view = new RailsBackboneSimpleCRUD.Views.Posts.IndexView(posts: @posts)
    $("#posts").html(@view.render().el)

  show: (id) ->
    post = @posts.get(id)

    @view = new RailsBackboneSimpleCRUD.Views.Posts.ShowView(model: post)
    $("#posts").html(@view.render().el)

  edit: (id) ->
    post = @posts.get(id)

    @view = new RailsBackboneSimpleCRUD.Views.Posts.EditView(model: post)
    $("#posts").html(@view.render().el)

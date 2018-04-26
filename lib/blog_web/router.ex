defmodule BlogWeb.Router do
  use BlogWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BlogWeb do
    pipe_through :api

    get "/show_posts", PostController, :index
    get "/show_post/:id", PostController, :show
    post "/add_post", PostController, :create
    put "/edit_post/:id", PostController, :edit
    delete "/delete_post/:id", PostController, :delete
  end
end

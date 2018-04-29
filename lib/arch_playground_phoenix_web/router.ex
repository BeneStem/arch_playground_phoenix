defmodule ArchPlaygroundPhoenixWeb.Router do
  use ArchPlaygroundPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ArchPlaygroundPhoenixWeb do
    pipe_through :api

    get "/:messenger", ApiController, :index
  end
end

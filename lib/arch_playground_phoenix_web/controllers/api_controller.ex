defmodule ArchPlaygroundPhoenixWeb.ApiController do
  use ArchPlaygroundPhoenixWeb, :controller

  def index(conn, %{"messenger" => messenger}) do
    json conn, %{hello: messenger}
  end
end

defmodule ArchPlaygroundPhoenixWeb.ApiController do
  use ArchPlaygroundPhoenixWeb, :controller

  def show(conn, %{"messenger" => messenger}) do
    json conn, %{hello: messenger}
  end
end

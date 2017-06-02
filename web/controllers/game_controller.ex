defmodule RcsPhoenix.GameController do
  use RcsPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def show(conn, %{"id" => id}) do
    render conn, "show.html"
  end
end

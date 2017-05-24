defmodule RcsPhoenix.PageController do
  use RcsPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

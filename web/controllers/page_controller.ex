defmodule Whatevs-com.PageController do
  use Whatevs-com.Web, :controller

  def index(conn, _params) do
    conn
    |> render("index.html")
  end
end

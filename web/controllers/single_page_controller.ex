defmodule InstantElixir.SinglePageController do  
  use InstantElixir.Web, :controller

  def index(conn, params) do
    render conn, "index.html", message: Map.get(params, "message")
  end
end  

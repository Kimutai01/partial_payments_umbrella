defmodule PartialPaymentsWeb.PageController do
  use PartialPaymentsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end

defmodule Reminders.RemindersController do
  use Reminders.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end

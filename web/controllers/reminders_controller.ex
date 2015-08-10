defmodule Reminders.RemindersController do
  use Reminders.Web, :controller

  plug :action

  def index(conn, _params) do
    render conn, "index.html"
  end

  def new(conn, _params) do
    render conn, "new.html"
  end

end

defmodule Reminders.Router do
  use Reminders.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Reminders do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    # get "/reminders", RemindersController, :index
    resources "reminders", RemindersController, except: [:delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Reminders do
  #   pipe_through :api
  # end
end

defmodule RcsPhoenix.Router do
    use RcsPhoenix.Web, :router

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

    scope "/", RcsPhoenix do
        pipe_through :browser # Use the default browser stack

        get "/", PageController, :index
        get "/about", PageController, :about

        resources "/games", GamesController, only: [:index, :show]
    end

    scope "/api", RcsPhoenix do
        pipe_through :api
    end
end

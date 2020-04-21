# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :fake_places,
  ecto_repos: [FakePlaces.Repo]

# Configures the endpoint
config :fake_places, FakePlacesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oyjBArXLDVBv6P5SoGHJaghnQA6onclbJZ3OZBHffWv5vZGg+ASuHHnaSdtVPShg",
  render_errors: [view: FakePlacesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: FakePlaces.PubSub,
  live_view: [signing_salt: "MrG3oFXb"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

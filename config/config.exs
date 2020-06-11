# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :getaways,
  ecto_repos: [Getaways.Repo]

# Configures the endpoint
config :getaways, GetawaysWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1h3bI+zfICAsXj+1LfoPL99xrqz7tAhW1qXJEy4gMjzQ5SwwaKMRtkpHihnw/cyn",
  render_errors: [view: GetawaysWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Getaways.PubSub,
  live_view: [signing_salt: "tvX+8Rky"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

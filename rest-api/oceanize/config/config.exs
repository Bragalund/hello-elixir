# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :oceanize,
  ecto_repos: [Oceanize.Repo]

# Configures the endpoint
config :oceanize, OceanizeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7V/zIVWbl4uw8VjGOH+uI1JchtkAsBxQiq0N61IK8k27auPi73d2c4QpFBQOgOYg",
  render_errors: [view: OceanizeWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Oceanize.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

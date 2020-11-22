# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :scroll_racer,
  ecto_repos: [ScrollRacer.Repo]

# Configures the endpoint
config :scroll_racer, ScrollRacerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Q3UZAU6MYWUPNSrmYsEkN0YLFKrOu8U7iuLdPALvH17fsDTb5a0FtNJBv1DfkXdV",
  render_errors: [view: ScrollRacerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ScrollRacer.PubSub,
  live_view: [signing_salt: "3SzsrMyf"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

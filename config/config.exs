# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :dev_challenge_elixir,
  ecto_repos: [DevChallengeElixir.Repo]

# Configures the endpoint
config :dev_challenge_elixir, DevChallengeElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s6NgD3FCqiQF+7vksbC50Yw6gqSjv+uQBzUfx3S/CxND4EwZH2odseyoO8+4MOcu",
  render_errors: [view: DevChallengeElixirWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: DevChallengeElixir.PubSub,
  live_view: [signing_salt: "QeXQrpmS"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

config :dev_challenge_elixir, DevChallengeElixirWeb.Auth.Guardian,
  issuer: "dev_challenge_api",
  secret_key: "8MXWdGbiwRoXRUCXyKXmVz/U9WYQECPOUGTZCBnjrrriulWXfM5H0AsggRrEipQ5"

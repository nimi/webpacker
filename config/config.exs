# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :webpacker,
  ecto_repos: [Webpacker.Repo]

# Configures the endpoint
config :webpacker, Webpacker.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KTQKp0DVQOGhrnTMeCCN6JR7Dh1F5Kde08JfSkgW3Zcp0aCxacccbLJa2RZPGHQK",
  render_errors: [view: Webpacker.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Webpacker.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

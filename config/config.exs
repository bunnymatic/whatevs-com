# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :___w___h___a___t___e___v___s___-___c___o___m___,
  ecto_repos: [Whatevs-com.Repo]

# Configures the endpoint
config :___w___h___a___t___e___v___s___-___c___o___m___, Whatevs-com.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: Whatevs-com.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Whatevs-com.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

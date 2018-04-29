# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :arch_playground_phoenix, ArchPlaygroundPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xZxqD4LlvQIjc0H6CaBCl8s1qCn6ewgaw6SCbbBDKkNSo2Y/4PjbNcCeWGFv/Cx3",
  render_errors: [view: ArchPlaygroundPhoenixWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: ArchPlaygroundPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

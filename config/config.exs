# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_multiple_select, PhoenixMultipleSelect.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "Ho4LzY6cW8WlocP/RRg2wAbm3H1NhjIbwmxAFV/eq8Jo6ty1G2CCYxLqnT5N/1Dg",
  render_errors: [default_format: "html"],
  pubsub: [name: PhoenixMultipleSelect.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

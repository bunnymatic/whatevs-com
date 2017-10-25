use Mix.Config

# We run a server during test for Wallaby integration testing.
config :___w___h___a___t___e___v___s___-___c___o___m___, Whatevs-com.Endpoint,
  http: [port: 4001],
  server: true,
  secret_key_base: "0123456789012345678901234567890123456789012345678901234567890123456789"

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :___w___h___a___t___e___v___s___-___c___o___m___, Whatevs-com.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "___w___h___a___t___e___v___s___-___c___o___m____test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :___w___h___a___t___e___v___s___-___c___o___m___, :sql_sandbox, true

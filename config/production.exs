use Mix.Config

 config :___w___h___a___t___e___v___s___-___c___o___m___, Whatevs-com.Endpoint,
   http: [port: {:system, "PORT"}],
   url: [scheme: "https", host: "whatevs-com-prod.herokuapp.com", port: 443],
   force_ssl: [rewrite_on: [:x_forwarded_proto]],
   cache_static_manifest: "priv/static/manifest.json",
   secret_key_base: System.get_env("SECRET_KEY_BASE")

 # Configure your database
 config :___w___h___a___t___e___v___s___-___c___o___m___, Whatevs-com.Repo,
   adapter: Ecto.Adapters.Postgres,
   url: System.get_env("DATABASE_URL"),
   pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
   ssl: true

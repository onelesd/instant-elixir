use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :instant_elixir, InstantElixir.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  #watchers: [npm: ["start"]]
  watchers: [
    {"node", [
                "node_modules/webpack/bin/webpack.js", 
                "--watch-stdin", 
                "--progress", 
                "--colors"
             ]
    },
    {"node", [
               "node_modules/webpack/bin/webpack.js", 
               "--watch-stdin", 
               "--progress", 
               "--colors", 
               "--config", 
               "webpack.server.config.js"
             ]
    },
  ]

# Watch static and templates for browser reloading.
config :instant_elixir, InstantElixir.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :instant_elixir, InstantElixir.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "instant_elixir_dev",
  hostname: "localhost",
  pool_size: 10

config :instant_elixir, InstantElixir.ReactIo,  
  watch_files: [
    Path.join([__DIR__, "../priv/server/js/component.js"]) # only watch files in dev
  ]


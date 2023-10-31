import Config

config :sql_ecto, SqlEcto.Repo,
  database: "sql_ecto_repo",
  username: "sangeetha",
  password: "postgres",
  hostname: "localhost"


config :sql_ecto,
  ecto_repos: [SqlEcto.Repo]

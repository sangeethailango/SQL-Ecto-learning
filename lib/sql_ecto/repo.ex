defmodule SqlEcto.Repo do
  use Ecto.Repo,
    otp_app: :sql_ecto,
    adapter: Ecto.Adapters.Postgres
end

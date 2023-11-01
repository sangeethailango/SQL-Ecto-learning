defmodule SqlEcto.Repo.Migrations.Country do
  use Ecto.Migration

  def change do
    create table(:countries, primary_key: false) do
      add :id, :bigint, primary_key: true
      add :country_name, :string, size: 40
      add :region_id, references(:regions), null: false
    end

    create index(:countries, [:region_id])

  end
end

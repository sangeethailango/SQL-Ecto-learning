defmodule SqlEcto.Repo.Migrations.CreateRegions do
  use Ecto.Migration

  def change do
    create table(:regions, primary_key: false) do
      add :region_id, :serial, primary_key: true
      add :region_name, :string, size: 25
    end
  end
end

defmodule SqlEcto.Repo.Migrations.Region do
  use Ecto.Migration

  def change do
    create table(:regions, primary_key: false) do
      add :id, :integer, primary_key: true
      add :region_name, :string, size: 25
    end
  end
end

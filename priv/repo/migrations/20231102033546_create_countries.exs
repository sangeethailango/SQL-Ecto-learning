defmodule SqlEcto.Repo.Migrations.CreateCountries do
  use Ecto.Migration

  def change do
    create table(:countries, primary_key: false) do
      add :country_id, :string, primary_key: true, size: 2
      add :country_name, :string, size: 40
      add :region_id, references("regions", column: :region_id, type: :serial, on_update: :update_all, on_delete: :delete_all), null: false
    end
  end
end

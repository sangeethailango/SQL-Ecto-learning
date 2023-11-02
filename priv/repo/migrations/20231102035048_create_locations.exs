defmodule SqlEcto.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table("locations", primary_key: false) do
      add :location_id, :serial, primary_key: true
      add :street_address, :string, size: 40
      add :postal_code, :string, size: 12
      add :city, :string, size: 30, null: false
      add :state_province, :string, size: 25
      add :country_id, references("countries", type: :string, column: :country_id, on_update: :update_all, on_delete: :delete_all), null: false, size: 2

    end

  end
end

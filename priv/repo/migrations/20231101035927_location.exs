defmodule SqlEcto.Repo.Migrations.Location do
  use Ecto.Migration

  def change do
    create table(:locations, primary_key: false) do
      add :id, :integer, primary_key: true
      add :street_address, :string, size: 40
      add :postal_code, :string, size: 12
      add :city, :string, size: 30, null: false
      add :state_province, :string, size: 25
      add :country_id, references(:countries), size: 2, null: false
    end

    create index(:locations, [:country_id])

  end
end

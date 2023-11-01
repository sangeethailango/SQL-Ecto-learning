defmodule SqlEcto.Repo.Migrations.Department do
  use Ecto.Migration

  def change do
    create table(:departments, primary_key: false) do
      add :id, :integer, primary_key: true
      add :department_name, :string, size: 30, null: false
      add :location_id, references(:locations)
    end

    create index(:departments, [:location_id])

  end
end

defmodule SqlEcto.Repo.Migrations.CreateDepartments do
  use Ecto.Migration

  def change do
    create table("departments", primary_key: false) do
      add :department_id, :serial, primary_key: true
      add :department_name, :string, size: 30, null: false
      add :location_id, references("locations", type: :serial, column: :location_id, on_update: :update_all, on_delete: :delete_all)
    end
  end
end

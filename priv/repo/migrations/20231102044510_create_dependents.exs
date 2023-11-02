defmodule SqlEcto.Repo.Migrations.CreateDependents do
  use Ecto.Migration

  def change do
    create table("dependents", primary_key: false) do
     add :dependent_id, :serial, primary_key: true
     add :first_name, :string, size: 50, null: false
     add :last_name, :string, size: 50, null: false
     add :relationship, :string, size: 25, null: false
     add :employee_id, references("employees", type: :serial, column: :employee_id, on_update: :update_all, on_delete: :delete_all), null: false
    end
  end
end

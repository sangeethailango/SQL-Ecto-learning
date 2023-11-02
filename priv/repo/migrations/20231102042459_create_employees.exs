defmodule SqlEcto.Repo.Migrations.CreateEmployees do
  use Ecto.Migration

  def change do
    create table("employees", primary_key: false) do
      add :employee_id, :serial, primary_key: true
      add :first_name, :string, size: 20
      add :last_name, :string, size: 25, null: false
      add :email, :string, size: 100, null: false
      add :phone_number, :string, size: 20
      add :hire_date, :date, null: false
      add :salary, :decimal, precision: 8, scale: 2, null: false
      add :job_id, references("jobs", type: :serial, column: :job_id, on_update: :update_all, on_delete: :delete_all)
      add :department_id, references("departments", type: :serial, column: :department_id, on_update: :update_all, on_delete: :delete_all)
      add :manager_id, references("employees", type: :serial, column: :employee_id, on_update: :update_all, on_delete: :delete_all)
    end
  end
end

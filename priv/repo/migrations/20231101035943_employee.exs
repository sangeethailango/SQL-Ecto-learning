defmodule SqlEcto.Repo.Migrations.Employee do
  use Ecto.Migration

  def change do
    create table(:employees, primary_key: false) do
      add :id, :integer, primary_key: true
      add :first_name, :string, size: 20
      add :last_name, :string, null: false, size: 25
      add :email, :string, null: false, size: 100
      add :phone_number, :string, null: false, size: 20
      add :hire_date, :date, null: false
      add :salary, :decimal, null: false, check: [8, 2]
      add :manager_id, :integer
      add :job_id,  references(:countries),  null: false
      add :department_id, references(:departments)

    end

    create index(:employees, [:job_id, :department_id])

  end
end

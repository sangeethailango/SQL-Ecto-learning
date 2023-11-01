defmodule SqlEcto.Repo.Migrations.Dependent do
  use Ecto.Migration

  def change do
    create table(:dependents, primary_key: false) do
      add :id, :integer, primary_key: true
      add :first_name, :string, null: false, size: 50
      add :last_name,  :string, null: false, size: 50
      add :relationship, :string, null: false, size: 25
      add :employee_id, references(:employees), null: false
    end

    create index(:dependents, [:employee_id])

  end
end

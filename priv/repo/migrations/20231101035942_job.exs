defmodule SqlEcto.Repo.Migrations.Job do
  use Ecto.Migration

  def change do
    create table(:jobs, primary_key: false) do
      add :id, :integer, primary_key: true
      add :job_title, :string, null: false, size: 35
      add :min_salary, :decimal, check: [8, 2]
      add :max_salary, :decimal
    end
  end
end

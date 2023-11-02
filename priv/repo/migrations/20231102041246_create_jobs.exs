defmodule SqlEcto.Repo.Migrations.CreateJobs do
  use Ecto.Migration

  def change do
    create table(:jobs, primary_key: false) do
      add :job_id, :serial, primary_key: true
      add :job_title, :string, size: 35, null: false
      add :min_salary, :decimal, precision: 8, scale: 2
      add :max_salary, :decimal, precision: 8, scale: 2
    end
  end
end

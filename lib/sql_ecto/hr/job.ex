defmodule SqlEcto.Hr.Job do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:job_id, :integer, []}

  schema "jobs" do

    field :job_title, :string
    field :min_salary, :decimal
    field :max_salary, :decimal

  end

  def changeset(jobs, _params) do
    jobs
    |> validate_required(:job_title)
    |> validate_inclusion(:min_salary, [8, 2])
    |> validate_length(:job_title, max: 35)
  end
end

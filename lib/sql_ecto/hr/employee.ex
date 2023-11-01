defmodule SqlEcto.Hr.Employee do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :integer, autogenerate: false}

  schema "employees" do

    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :phone_number, :string
    field :hire_date, :date
    field :salary, :decimal
    field :manager_id, :integer
    field :job_id, :integer
    field :department_id, :integer

  end

  @spec changeset(Ecto.Changeset.t(), any()) :: Ecto.Changeset.t()
  def changeset(employees, _params) do
    employees
    |> validate_required(:last_name)
    |> validate_required(:email)
    |> validate_required(:phone_number)
    |> validate_required(:hire_date)
    |> validate_required(:job_id)
    |> validate_required(:salary)
    |> validate_inclusion(:salary, [8, 2])
    |> validate_length(:first_name, max: 20)
    |> validate_length(:last_name, max: 25)
    |> validate_length(:email, max: 100)
    |> validate_length(:phone_number, max: 20)
    |> validate_length(:job_title, max: 35)
    |> validate_length(:job_title, max: 35)
  end
end

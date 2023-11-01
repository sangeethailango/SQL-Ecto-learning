defmodule SqlEcto.Hr.Department do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :integer, autogenerate: false}

  schema "departments" do

    field :department_name, :string
    field :location_id, :integer

  end

  @spec changeset(Ecto.Changeset.t(), any()) :: Ecto.Changeset.t()
  def changeset(departments, _params) do
    departments
    |> validate_required(:department_name)
    |> validate_length(:department_name, max: 30)
  end
end

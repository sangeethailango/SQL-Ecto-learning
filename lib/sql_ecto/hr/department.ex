defmodule SqlEcto.Hr.Department do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:department_id, :integer, []}

  schema "departments" do

    field :department_name, :string
    field :location_id, :integer

  end

  def changeset(departments, _params) do
    departments
    |> validate_required(:department_name)
    |> validate_length(:department_name, max: 30)
  end
end

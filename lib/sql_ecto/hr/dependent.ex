defmodule SqlEcto.Hr.Dependent do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :integer, autogenerate: false}

  schema "dependents" do

    field :first_name, :string
    field :last_name, :string
    field :relationship, :string
    field :employee_id, :integer

  end

  def changeset(dependents, _params) do
    dependents
    |> validate_required(:first_name)
    |> validate_required(:last_name)
    |> validate_required(:relationship)
    |> validate_required(:employee_id)
    |> validate_length(:first_name, max: 50)
    |> validate_length(:last_name, max: 50)
    |> validate_length(:relationship, max: 25)
  end
end

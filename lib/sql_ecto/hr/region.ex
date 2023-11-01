defmodule SqlEcto.Hr.Region do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :integer, autogenerate: false}

  schema "regions" do

    field :region_name, :string

  end

  def changeset(regions, _params) do
    regions
    |> validate_length(:region_name, max: 25)
  end
end

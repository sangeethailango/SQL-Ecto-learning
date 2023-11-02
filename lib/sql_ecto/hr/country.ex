defmodule SqlEcto.Hr.Country do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:country_id, :string, autogenerate: false}

  schema "countries" do

    field :country_name, :string
    field :region_id, :integer

  end

  def changeset(countries, _params) do
    countries
    |> validate_required(:region_id)
    |> validate_length(:country_id, max: 2)
    |> validate_length(:country_name, max: 40)

  end
end

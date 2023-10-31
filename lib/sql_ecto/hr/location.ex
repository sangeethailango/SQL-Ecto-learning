defmodule SqlEcto.Hr.Location do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:location_id, :integer, []}

  schema "locations" do

    field :street_address, :string
    field :postal_code, :string
    field :city, :string
    field :state_province, :string
    field :country_id, :string

  end

  def changeset(locations, _params) do
    locations
    |> validate_required(:city)
    |> validate_required(:country_id)
    |> validate_length(:street_address, max: 40)
    |> validate_length(:postal_code, max: 12)
    |> validate_length(:city, max: 30)
    |> validate_length(:state_province, max: 25)
    |> validate_length(:country_id, max: 2)
  end
end

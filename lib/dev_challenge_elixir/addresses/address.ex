defmodule DevChallengeElixir.Addresses.Address do
  use Ecto.Schema
  import Ecto.Changeset

  schema "addresses" do
    field :city, :string
    field :complement, :string
    field :district, :string
    field :number, :string
    field :state, :string
    field :street, :string
    field :zipcode, :string

    timestamps()
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:street, :number, :complement, :district, :city, :state, :zipcode])
    |> validate_required([:street, :number, :complement, :district, :city, :state, :zipcode])
  end
end

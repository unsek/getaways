defmodule Getaways.Menu.Item do
  use Ecto.Schema
  import Ecto.Changeset

  schema "items" do
    field :description, :string
    field :name, :string
    field :price, :decimal

    timestamps()
  end

  @doc false
  def changeset(item, attrs) do
    item
    |> cast(attrs, [:description, :name, :price])
    |> validate_required([:description, :name, :price])
  end
end

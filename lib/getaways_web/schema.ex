defmodule GetawaysWeb.Schema do
  use Absinthe.Schema

  alias Getaways.Menu

  query do
    field :menu_items, list_of(:menu_item) do
      resolve fn _, _, _ ->
        {:ok, Menu.list_items}
      end
    end
  end

  object :menu_item do
    field :id, non_null(:id)
    field :name, non_null(:string)
    field :description, :string
  end

  # object :place do
  #   field :id, non_null(:id)
  #   field :name, non_null(:string)
  #   field :location, non_null(:string)
  #   field :max_guests, non_null(:integer)
  # end
end

defmodule GetawaysWeb.Schema.Query.MenuItemsTest do
  use GetawaysWeb.ConnCase, async: true

  alias Getaways.Menu

  @query """
  {
    menuItems {
      name
    }
  }
  """
  test "menuItems field returns menu items" do
    Menu.create_item(%{name: "Burger", description: "A faster, one way ticket to high cholesterol", price: 99.0})
    Menu.create_item(%{name: "Quarter Pounder Burger", description: "A faster, one way ticket to high cholesterol", price: 199.0})

    conn = build_conn()
    conn = get conn, "/api", query: @query
    assert json_response(conn, 200) == %{
      "data" => %{
        "menuItems" => [
          %{"name" => "Burger"},
          %{"name" => "Quarter Pounder Burger"}
        ]
      }
    }
  end
end

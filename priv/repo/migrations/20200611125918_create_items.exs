defmodule Getaways.Repo.Migrations.CreateItems do
  use Ecto.Migration

  def change do
    create table(:items) do
      add :description, :string
      add :name, :string
      add :price, :decimal

      timestamps()
    end

  end
end

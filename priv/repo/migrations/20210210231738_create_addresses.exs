defmodule DevChallengeElixir.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses) do
      add :street, :string
      add :number, :string
      add :complement, :string
      add :district, :string
      add :city, :string
      add :state, :string
      add :zipcode, :string

      timestamps()
    end

  end
end

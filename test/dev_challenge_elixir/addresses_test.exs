defmodule DevChallengeElixir.AddressesTest do
  use DevChallengeElixir.DataCase

  alias DevChallengeElixir.Addresses

  describe "addresses" do
    alias DevChallengeElixir.Addresses.Address

    @valid_attrs %{city: "some city", complement: "some complement", district: "some district", number: "some number", state: "some state", street: "some street", zipcode: "some zipcode"}
    @update_attrs %{city: "some updated city", complement: "some updated complement", district: "some updated district", number: "some updated number", state: "some updated state", street: "some updated street", zipcode: "some updated zipcode"}
    @invalid_attrs %{city: nil, complement: nil, district: nil, number: nil, state: nil, street: nil, zipcode: nil}

    def address_fixture(attrs \\ %{}) do
      {:ok, address} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Addresses.create_address()

      address
    end

    test "list_addresses/0 returns all addresses" do
      address = address_fixture()
      assert Addresses.list_addresses() == [address]
    end

    test "get_address!/1 returns the address with given id" do
      address = address_fixture()
      assert Addresses.get_address!(address.id) == address
    end

    test "create_address/1 with valid data creates a address" do
      assert {:ok, %Address{} = address} = Addresses.create_address(@valid_attrs)
      assert address.city == "some city"
      assert address.complement == "some complement"
      assert address.district == "some district"
      assert address.number == "some number"
      assert address.state == "some state"
      assert address.street == "some street"
      assert address.zipcode == "some zipcode"
    end

    test "create_address/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Addresses.create_address(@invalid_attrs)
    end

    test "update_address/2 with valid data updates the address" do
      address = address_fixture()
      assert {:ok, %Address{} = address} = Addresses.update_address(address, @update_attrs)
      assert address.city == "some updated city"
      assert address.complement == "some updated complement"
      assert address.district == "some updated district"
      assert address.number == "some updated number"
      assert address.state == "some updated state"
      assert address.street == "some updated street"
      assert address.zipcode == "some updated zipcode"
    end

    test "update_address/2 with invalid data returns error changeset" do
      address = address_fixture()
      assert {:error, %Ecto.Changeset{}} = Addresses.update_address(address, @invalid_attrs)
      assert address == Addresses.get_address!(address.id)
    end

    test "delete_address/1 deletes the address" do
      address = address_fixture()
      assert {:ok, %Address{}} = Addresses.delete_address(address)
      assert_raise Ecto.NoResultsError, fn -> Addresses.get_address!(address.id) end
    end

    test "change_address/1 returns a address changeset" do
      address = address_fixture()
      assert %Ecto.Changeset{} = Addresses.change_address(address)
    end
  end
end

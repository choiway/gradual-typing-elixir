defmodule Login do
  @moduledoc """

  """
  use Ecto.Schema
  import Ecto.Changeset

  embedded_schema do
    field(:username, :string)
    field(:email_address, :string)
    field(:age, :integer)
  end

  def marshal(params) do
    %Login{}
    |> cast(params, [:username, :email_address, :age])
    |> apply_changes
  end

  @spec print(%Login{}) :: String.t
  def print(%Login{} = login) do
    next_year_age = login.age + 1

    "username: #{login.username}, email_address: #{login.email_address}, next_year_age: #{
      next_year_age
    }"
  end

  def print(params) do
    next_year_age = params["age"] + 1

    "username: #{params["username"]}, email_address: #{params["email_address"]}, next_year_age: #{
      next_year_age
    }"
  end
end

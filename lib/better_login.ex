defmodule BetterLogin do
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
    %BetterLogin{}
    |> cast(params, [:username, :email_address, :age])
    |> apply_changes
  end

  @spec print(%BetterLogin{}) :: String.t
  def print(%BetterLogin{} = login) do
    next_year_age = login.age + 1

    "username: #{login.username}, email_address: #{login.email_address}, next_year_age: #{
      next_year_age
    }"
  end

  @spec print(%{}) :: String.t
  def print(params) when is_map(params) do
    next_year_age = params["age"] + 1

    "username: #{params["username"]}, email_address: #{params["email_address"]}, next_year_age: #{
      next_year_age
    }"
  end
end

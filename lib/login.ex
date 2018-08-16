defmodule Login do
  @moduledoc """

  """
  defstruct username: nil,  age: nil, email_address: nil

  @spec cast_login(map()) :: %Login{}
  def cast_login(params) when is_map(params) do
    %Login{username: params["username"], age: params["age"], email_address: params["email_address"]}
  end

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

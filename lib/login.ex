defmodule Login do
  @moduledoc """

  """
  defstruct username: nil,  age: nil, email_address: nil

  def print(params) do
    next_year_age = params["age"] + 1

    "username: #{params["username"]}, email_address: #{params["email_address"]}, next_year_age: #{
      next_year_age
    }"
  end
end

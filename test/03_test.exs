defmodule GradualTypesTest03 do
  use ExUnit.Case
  doctest GradualTypes

  @valid_params %{"username" => "waldo", "email_address" => "waldo@where.com", "age" => 20}
  @bad_type_params %{"username" => "waldo", "email_address" => "waldo@where.com", "age" => "20"}
  @valid_response "username: waldo, email_address: waldo@where.com, next_year_age: 21"

  test "print login with valid params" do
    login = BetterLogin.marshal(@valid_params)
    assert BetterLogin.print(login) == @valid_response
  end

  test "print login with bad age type in params" do
    login = BetterLogin.marshal(@bad_type_params)
    assert BetterLogin.print(login) == @valid_response
  end
end

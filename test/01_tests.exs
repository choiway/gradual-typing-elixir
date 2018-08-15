defmodule GradualTypesTest01 do
  use ExUnit.Case
  doctest GradualTypes

  test "print login with valid params" do
    params = %{"username" => "waldo", "email_address" => "waldo@where.com", "age" => 20}

    assert Login.print(params) ==
             "username: waldo, email_address: waldo@where.com, next_year_age: 21"
  end

  test "raise error for bad type for age" do
    params = %{"username" => "waldo", "email_address" => "waldo@where.com", "age" => "20"}
    assert_raise ArithmeticError, fn -> Login.print(params) end
  end
end

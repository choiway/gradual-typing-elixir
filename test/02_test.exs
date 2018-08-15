defmodule GradualTypesTest02 do
  use ExUnit.Case
  doctest GradualTypes

  test "print login with valid login" do
    params = %{"username" => "waldo", "email_address" => "waldo@where.com", "age" => 20}
    login = Login.cast_login(params)

    assert Login.print(login) ==
             "username: waldo, email_address: waldo@where.com, next_year_age: 21"
  end

  test "raise error for bad type for age" do
    params = %{"username" => "waldo", "email_address" => "waldo@where.com", "age" => "20"}
    login = Login.cast_login(params)
    assert_raise ArithmeticError, fn -> Login.print(login) end
  end
end

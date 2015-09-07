defmodule ElixirChallenges.Euler.Problem000Test do
  use ExUnit.Case, async: true
  import ElixirChallenges.Euler.Problem000

  test "problem001: multiples of 3 and 5" do 
    assert problem001 == 233168
  end

  test "problem002: even fibonacci numbers" do 
    assert problem002 == 4613732
  end
end
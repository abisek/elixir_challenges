defmodule ElixirChallenges.Util.SequenceTest do
  use ExUnit.Case, async: true
  alias ElixirChallenges.Util.Sequence

  test "fib sequence should start with 0" do
    {:ok, first} = Sequence.fib |> Enum.fetch 0
    assert first == 0
  end

  test "fib sequence" do
    tests = [
      [index: 1, result: 1],
      [index: 2, result: 1],
      [index: 3, result: 2],
      [index: 4, result: 3],
      [index: 5, result: 6],
    ]

    tests 
    |> Enum.each fn test -> 
      {:ok, value} = Sequence.fib |> Enum.fetch(test[:index])
      assert value == test[:result]
    end
  end
end
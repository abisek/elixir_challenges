defmodule ElixirChallenges.Util.Sequence do
  @moduledoc """
    Helper functions for sequence generation
  """

  @doc """
    Returns a lazy stream for generating Fibonacci sequence

    Credit: https://github.com/seven1m/30-days-of-elixir/blob/master/24-stream.exs
  """
  def fib do
    Stream.unfold({0, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end
end
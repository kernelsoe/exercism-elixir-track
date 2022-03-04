defmodule GuessingGame do
  def compare(secret, guess \\ :no_guess)

  def compare(secret, guess) when secret === guess, do: "Correct"

  def compare(_, guess) when not is_integer(guess), do: "Make a guess"

  def compare(secret, guess) when abs(secret - guess) == 1, do: "So close"

  def compare(secret, guess) when secret > guess, do: "Too low"
  def compare(secret, guess) when secret < guess, do: "Too high"
end

defmodule Secrets do
  def secret_add(secret) do
    # Please implement the secret_add/1 function
    &(&1 + secret)
  end

  def secret_subtract(secret) do
    # Please implement the secret_subtract/1 function
    &(&1 - secret)
  end

  def secret_multiply(secret) do
    # Please implement the secret_multiply/1 function
    &(&1 * secret)
  end

  def secret_divide(secret) do
    # Please implement the secret_divide/1 function
    &(div(&1, secret))
  end

  def secret_and(secret) do
    # Please implement the secret_and/1 function
    &(Bitwise.&&&(&1, secret))
  end

  def secret_xor(secret) do
    # Please implement the secret_xor/1 function
    &(Bitwise.^^^(&1, secret))
  end

  def secret_combine(secret_function1, secret_function2) do
    # Please implement the secret_combine/2 function
    &(secret_function2.(secret_function1.(&1)))
  end
end

# subtract = Secrets.secret_subtract(20)
# multiply = Secrets.secret_multiply(2)
# divide = Secrets.secret_divide(3)

# combined = Secrets.secret_combine(multiply, subtract)
# IO.inspect(combined.(100))
# Secrets.secret_combine()

defmodule RotationalCipher do

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |> String.to_charlist
    |> Enum.reduce([], fn x, acc -> if x>= ?a and x<= ?z, do: acc ++ [?a + rem((x+shift)-?a, 26)], else: acc ++ [x]  end)
    |> Enum.reduce([], fn x, acc -> if x>= ?A and x<= ?Z, do: acc ++ [?A + rem((x+shift)-?A, 26)], else: acc ++ [x]  end)
    |> List.to_string
  end

end

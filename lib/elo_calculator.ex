defmodule EloEx.EloCalculator do
  import Math

  def rating_change(winner_rating, loser_rating) do
    (50.00 * ( 1.00 - (1.00 / (pow(10.00, Float.round(((loser_rating - winner_rating) / 400.00), 2)) + 1.00))))
    |> Float.ceil
    |> trunc
  end

  def winner_percent(winner_rating, loser_rating) do
    (1.00 / (pow(10.00, ((loser_rating - winner_rating) / 400.00)) + 1.00))
    |> Float.ceil(2)
  end
end

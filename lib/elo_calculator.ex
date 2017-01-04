defmodule EloEx.EloCalculator do
  def rating_change(winner_rating, loser_rating) do
    cond do
      winner_rating < loser_rating ->
        5
      winner_rating > loser_rating ->
        10
    end
  end
end

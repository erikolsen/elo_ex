defmodule EloEx.EloCalculatorTest do
  use ExUnit.Case, async: true
  alias EloEx.EloCalculator

  test "ratings are even" do
    assert EloCalculator.rating_change(1000, 1000) == 25
  end

  ### GREATER

  test "winner_rating is greater by double" do
    assert EloCalculator.rating_change(2000, 1000) == 1
  end

  test "winner_rating is greater by 100" do
    assert EloCalculator.rating_change(1100, 1000) == 18
  end

  test "winner_rating is greater by 200" do
    assert EloCalculator.rating_change(1200, 1000) == 13
  end

  ### LOWER

  test "winner_rating is lower by 100" do
    assert EloCalculator.rating_change(1000, 1100) == 33
  end

  test "winner_rating is lower by 200" do
    assert EloCalculator.rating_change(1000, 1200) == 38
  end

  test "winner_rating is lower by double" do
    assert EloCalculator.rating_change(1000, 2000) == 50
  end
end

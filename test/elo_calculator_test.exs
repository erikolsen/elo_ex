defmodule EloEx.EloCalculatorTest do
  use ExUnit.Case, async: true
  alias EloEx.EloCalculator
test "winner_rating is greater" do
    assert EloCalculator.rating_change(200, 100) == 10
  end

  test "winner_rating is lower" do
    assert EloCalculator.rating_change(100, 200) == 5
  end
end

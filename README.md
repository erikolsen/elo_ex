# EloEx

EloCalculator.rating_change(winner_rating, loser_rating) returns the net change in rating. Increase winners rating by changed amount and decrease losers rating by the changed amount.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `elo_ex` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:elo_ex, "~> 0.1.0"}]
    end
    ```

  2. Ensure `elo_ex` is started before your application:

    ```elixir
    def application do
      [applications: [:elo_ex]]
    end
    ```


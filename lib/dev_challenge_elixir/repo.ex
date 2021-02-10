defmodule DevChallengeElixir.Repo do
  use Ecto.Repo,
    otp_app: :dev_challenge_elixir,
    adapter: Ecto.Adapters.Postgres
end

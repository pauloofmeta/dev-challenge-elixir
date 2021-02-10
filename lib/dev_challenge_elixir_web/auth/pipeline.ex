defmodule DevChallengeElixirWeb.Auth.Pipeline do
  use Guardian.Plug.Pipeline, otp_app: :dev_challenge_elixir,
    module: DevChallengeElixirWeb.Auth.Guardian,
    error_handler: DevChallengeElixirWeb.Auth.ErrorHandler

  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end

defmodule FakePlaces.Repo do
  use Ecto.Repo,
    otp_app: :fake_places,
    adapter: Ecto.Adapters.Postgres
end

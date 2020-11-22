defmodule ScrollRacer.Repo do
  use Ecto.Repo,
    otp_app: :scroll_racer,
    adapter: Ecto.Adapters.Postgres
end

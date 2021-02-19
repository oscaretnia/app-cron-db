defmodule AppCronDb.Repo do
  use Ecto.Repo,
    otp_app: :app_cron_db,
    adapter: Ecto.Adapters.Postgres
end

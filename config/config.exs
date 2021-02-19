import Config

config :app_cron_db, AppCronDb.Repo,
  database: "app_cron_db",
  username: "admin",
  password: "password",
  hostname: "localhost"

config :app_cron_db, ecto_repos: [AppCronDb.Repo]

config :logger, level: :info

config :app_cron_db, AppCronDb.Scheduler,
  jobs: [
    application_task: [
      schedule: {:extended, "* * * * *"},
      task: {AppCronDb.Task, :do_task, []}
    ]
  ]

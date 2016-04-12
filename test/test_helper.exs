ExUnit.start

Mix.Task.run "ecto.create", ~w(-r InstantElixir.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r InstantElixir.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(InstantElixir.Repo)


defmodule Whatevs-com.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      alias Whatevs-com.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import Whatevs-com.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Whatevs-com.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(Whatevs-com.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(Whatevs-com.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end

defmodule PartialPayments.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      PartialPayments.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: PartialPayments.PubSub}
      # Start a worker by calling: PartialPayments.Worker.start_link(arg)
      # {PartialPayments.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: PartialPayments.Supervisor)
  end
end

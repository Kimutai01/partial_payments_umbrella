defmodule PartialPayments.Repo do
  use Ecto.Repo,
    otp_app: :partial_payments,
    adapter: Ecto.Adapters.Postgres
end

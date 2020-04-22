defmodule FakePlacesWeb.IndexLive do
  use FakePlacesWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, message: "Hello World!!!") |> put_flash(:info, "Message from FakePlaces...")}
  end
end

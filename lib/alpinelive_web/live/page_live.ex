defmodule AlpineliveWeb.PageLive do
  use AlpineliveWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, n: 1)}
  end

  @impl true
  def handle_event("inc", %{}, socket) do
    {:noreply, assign(socket, n: socket.assigns.n + 1)}
  end
end

defmodule ScrollRacerWeb.PageLive do
  use ScrollRacerWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    socket
    |> assign(:score, 0)
    |> ok()
  end

  @impl true
  def handle_event("scrolling", %{"offset_y" => offset}, socket) do
    socket
    |> assign(:score, socket.assigns.score + offset)
    |> noreply()
  end

  defp ok(socket) do
    {:ok, socket}
  end

  defp noreply(socket) do
    {:noreply, socket}
  end
end

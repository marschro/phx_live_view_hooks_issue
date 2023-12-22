defmodule ZeusWeb.AboutLive do
  use ZeusWeb, :live_view

  def render(assigns) do
    ~H"""
    <.link navigate={~p"/"} class="border rounded px-4 py-1 bg-slate-500 text-white">Home</.link>
    <.link navigate={~p"/about"} class="border rounded px-4 py-1 bg-slate-500 text-white">
      About
    </.link>
    <.link navigate={~p"/service"} class="border rounded px-4 py-1 bg-slate-500 text-white">
      Service
    </.link>
    <div>@active_tab: <%= assigns.active_tab %></div>
    <div>page title: <%= assigns.page_title %></div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end

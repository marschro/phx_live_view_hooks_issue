defmodule ZeusWeb.Hooks do
  import Phoenix.LiveView
  import Phoenix.Component

  def on_mount(:default, _params, _session, socket) do
    {:cont,
     socket
     |> attach_hook(:active_tab, :handle_params, &set_assigns/3)}
  end

  defp set_assigns(_params, _url, socket) do
    {active_tab, page_title} =
      case {socket.view, socket.assigns.live_action} do
        {ZeusWeb.AboutLive, _action} ->
          {:about, "About Page"}

        {ZeusWeb.HomeLive, _action} ->
          {:home, "Home Page"}

        {_, _} = data ->
          IO.inspect(data, label: "🦊 FIX ME!")
          {:default, "FIX ME !"}
      end

    {:cont,
     socket
     |> assign(active_tab: active_tab)
     |> assign(page_title: page_title)}
  end
end

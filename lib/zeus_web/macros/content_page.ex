defmodule ZeusWeb.Macros.ContentPage do
  defmacro __using__(_opts) do
    quote do
      use ZeusWeb, :live_view

      def mount(params, _session, socket) do
        {:ok, socket |> assign(:content, "Some Content")}
      end
    end
  end
end

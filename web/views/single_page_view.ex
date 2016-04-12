defmodule InstantElixir.SinglePageView do  
  use InstantElixir.Web, :view

  def render("index.html", opts) do
    props = %{}
    if opts[:message], do: props = Map.put(props, :message, opts[:message])

    result = InstantElixir.ReactIo.json_call!(%{
      component: "./priv/server/js/component.js",
      props: props,
    })

    render "app.html", html: result["html"], props: props
  end
end  

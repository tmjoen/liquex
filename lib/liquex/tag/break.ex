defmodule Liquex.Tag.Break do
  @behaviour Liquex.Tag

  alias Liquex.Parser.Tag

  import NimbleParsec

  @impl true
  def parse do
    ignore(Tag.tag_directive("break"))
  end

  @impl true
  def render(_, context), do: throw({:break, context})
end

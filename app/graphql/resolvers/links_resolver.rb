class LinksResolver
  def call(_, _, ctx)
    Link.all
  end
end
  
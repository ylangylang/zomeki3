class Cms::ContentsPreloader < PreloaderQuery
  DEPTH_LIMIT = 5

  class << self
    def public_node_ancestors
      { content: { public_node: { site: nil, parent: parents } } }
    end

    private

    def parents(depth = 0)
      return nil if depth > DEPTH_LIMIT
      { parent: parents(depth + 1) }
    end
  end
end

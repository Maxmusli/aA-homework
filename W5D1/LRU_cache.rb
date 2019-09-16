class LRUCache
    def initialize(n)
      @cache = Array.new(4)
    end

    def count
      # returns number of elements currently in cache
      cache.count
    end

    def add(el)
      # adds element to cache according to LRU principle
      cache << el
    end

    def show
      # shows the items in the cache, with the LRU item first
      cache.first
    end

    private
    # helper methods go here!
    attr_reader :cache
  end
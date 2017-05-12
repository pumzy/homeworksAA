class LRUCache
  def initialize(maxsize)
    @cache = []
    @maxsize = maxsize
  end

  def count
    @cache.count
  end

  def add(el)
    @cache.delete(el) if @cache.include?(el)
    if count < @maxsize
      @cache << (el)
    else
      @cache.shift
      @cache.push(el)
    end
  end

  def show
    p @cache
    return nil
  end

  private
  # helper methods go here!

end

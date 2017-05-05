class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def remove
    @queue.pop
  end

  def show
    @queue
  end
end

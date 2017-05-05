class Stack

def initialize
  @keeper = []
end

def add(el)
  @keeper.push(el)
end

def remove
  @keeper.pop
end

def show
  @keeper
end



end

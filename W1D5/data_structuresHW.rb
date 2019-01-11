class Stack
  def initialize
    @arr = []
  end

  def push(el)
    arr.push(el)
    el
  end

  def pop
    arr.pop
  end

  def peek
    arr.last
  end
  attr_reader :arr
end



#excercise 2 Queue
class Queue
  def initialize
    @arr = []
  end

  def enqueue(el)
    arr.push(el)
    el
  end

  def dequeue
    arr.shift
  end

  def peek
    arr.last
  end

  attr_reader :arr
end



#excercise 3 map
class Map
def initialize
  @arr = []
end

def set(key,value)
  pair_idx = arr.index {|el| el[o] == key}
  if pair_idx
    arr[pair_idx][1] = value
  else
    arr.push([key,value])
  end
  value
end

def get(key)
  arr.each {|item| return item[1] if item[0] == key}
end

def delete(key)
  value = get(key)
  arr.reject! { |pair| pair[0] == key }
    value
end

def show
  deep_dup(arr)
end

attr_reader :arr

def deep_dup(arr)
   arr.map do |el|
       if el.is_a?(Array)
           deep_dup(el)
        else
           el
        end
     end
 end 
end






























#

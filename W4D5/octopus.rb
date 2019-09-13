FSH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(arr)
  sorted = false
  until sorted
    sorted = true
    (0...arr.length - 1).each do |i|
      if arr[i] >  arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        sorted = false
      end 
    end
  end
  arr.last
end

def dominant_octopus(arr)
  sorted = quick_sort(arr)
  sorted.last
end

def quick_sort(arr)
  return arr if arr.length < 2
  pivot = arr[0]
  left = arr[1..-1].select { |ele| ele <= pivot }
  right = arr[1..-1].select { |ele| ele > pivot }
  
  quick_sort(left) + [pivot] + quick_sort(right)
end

def clever_octopus(arr)
  longest = ""
  arr.each do |ele|
    longest = ele if ele.length > longest.length
  end
  longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(target, arr)
  arr.each { |ele| return ele if ele == target }
end

hash = {
  "up" => 0,
  "right-up" => 1,
  "right"=> 2,
  "right-down" => 3,
  "down" => 4,
  "left-down" => 5,
  "left" => 6,
  "left-up" => 7
}
def constant_dance(target, hash)
  hash[target]
end


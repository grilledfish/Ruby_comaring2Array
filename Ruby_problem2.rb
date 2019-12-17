#!/bin/ruby

require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
a_r =0
b_r =0

    a.zip(b).each{|ar, br| 
    if ar > br then
        a_r += 1
    elsif ar < br then
        b_r += 1
    end
    }
return a_r.to_s + " " +b_r.to_s
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)

b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

#fptr.write result.join( " ")
fptr.write result.to_s
fptr.write "\n"

fptr.close()


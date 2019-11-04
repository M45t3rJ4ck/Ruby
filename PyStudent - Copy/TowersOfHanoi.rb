from = []
to = []
spare = []

print ("How many ring should there be? ")
ring = gets.chomp.to_i

def towers(ring, from, to, spare)
    if (ring == 1)
        ring = from.pop
        puts ("Move ring #{ring} from #{from.to_s} to #{to.to_s}.")
        to.push(ring)
    else
        towers(ring-1, from, spare, to)
        towers(1, from, to, spare)
        towers(ring-1, spare, to, from)
    end
end

towers(ring, from, to, spare)

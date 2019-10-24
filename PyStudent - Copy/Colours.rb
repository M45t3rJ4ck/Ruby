#Triathlon Award Determiner
puts ("Welcome to the award ceremony, what is your name: ")
candidate = gets.chomp.to_s
#Read Time(Minutes) - Swimming, Cycling, Running
tri_swi = 0
tri_cyc = 0
tri_run = 0
puts ("Please enter your time in minutes for 5km swimming: ")
tri_swi = gets.chomp.to_i
puts ("Please enter your time in minutes for 5km cycling: ")
tri_cyc = gets.chomp.to_i
puts ("Please enter your time in minutes for 5km running: ")
tri_run = gets.chomp.to_i
#Calculate Total Triathlon Time
tri_time = 0
tri_time = tri_swi + tri_cyc + tri_run
tri_time = tri_time.to_i
#Award Criteria
prov_col = 100
prov_half = 110
prov_scr = 115
prov_cer = 120
#Provincial Colours = -100min
if tri_time <= prov_col.to_i
    puts ("Congratulations! " + candidate.upcase.to_s + ", you're in 1st place with " + tri_time.to_s + " minutes.")
#Provincial Half-Colours = -110min
elsif tri_time <= prov_half.to_i
    puts ("Nicely done! " + candidate.upcase.to_s + ", you're in 2nd place with " + tri_time.to_s + " minutes.")
#Provincial Scroll = -115min
elsif tri_time <= prov_scr.to_i
    puts ("Not bad! " + candidate.upcase.to_s + ", you're in 3rd place with " + tri_time.to_s + " minutes.")
#Provincial Certificate = -120min
elsif tri_time <= prov_cer.to_i
    puts ("Keep trying! " + candidate.upcase.to_s + ", you're in 4th place with " + tri_time.to_s + " minutes.")
#No Award = +120min
else
    puts ("Maybe you should actually start practicing!?")
end

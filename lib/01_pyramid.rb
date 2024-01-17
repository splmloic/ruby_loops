def start_build
    step = 0
    loop do
        puts "tu veux combien d'étage dans ta pyramide ?"
        print "> "
        step = gets.chomp.to_i
        if step > 1 && step < 26
            break
        end
    end
    return step
end

def half_pyramid (step)
    puts "Voici la pyramide :"
    step.times do |i|
    puts "#" * (i+1) 
    end
end

def full_pyramid (step)
    step.times do |i|
        until step.times != 0 do
        print " " * (step-i-1)
        puts "#"
        end
      print " " * (step-i-1)
      print "#" * (i+1)
      puts "#" * i
    end
end

def wtf_pyramid (step)
    step.times do |i|
        #while step.times > step/2 do
            until step.times != 0 do
                print " " * (step-i-1)
                puts "#"
            end
        print " " * (step-i-1)
        print "#" * (i+1)
        puts "#" * i
        #end
    end
end

def perform
    step = start_build
    full_pyramid (step)
end

perform

#     # 
#    ###
#   #####
#  #######
# #########
# 1#######
# 12#####
# 123###
# 1234#
#
#
#
#
#
#
#
#
#
#
#
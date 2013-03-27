local tArgs = {...}
local command = tArgs[1]
local length = tArgs[2]

function turnAround ()
    turtle.turnRight()
    turtle.turnRight()
    print(os.getComputerLabel() .. " is turning around.")
end
function move (dir, num)
    if length == nil then
        print("You must define the length of blocks you want the turtle to move " .. dir .. ". Type 'command " .. dir .. " 1' to move the turtle " .. dir .. " 1 block.")
    else
        
        local blocks = "blocks"
        if num == "1" then
            blocks = "block"
        end

        print("Moving " .. dir .. " " .. num .. " " .. blocks)
        
        for i = 1, tonumber(num), 1 do
            if dir == "forward" or command == "f" then turtle.forward()
            elseif dir == "back" or command == "b" then turtle.back()
            elseif dir == "up" or command == "u" then turtle.up()
            elseif dir == "down" or command == "d"then turtle.down()
                
            end
        end
    end
end
function turnMove(command)
    if length == nil then
        length = 0    

    end
    if command == "left" or command == "l" then
        turtle.turnLeft()
    else 
        turtle.turnRight()
    end
    print("Turning " .. command)
    move("forward",length)
end

if command == "left" or command == "l" then turnMove(command) 
elseif command == "right" or command == "r" then turnMove(command)
elseif command == "turnaround" or command == "ta"then turnAround()
elseif command == "back" or command == "b" then move(command, length)
elseif command == "forward" or command == "f" then move(command, length)
elseif command == "up" or command == "u" then move(command, length)
elseif command == "down" or command == "d" then move(command, length)
else
    term.clear()
    term.setCursorPos(1,1)
    print("Easy Turtle Commmands Package 2.0")
    print("by Zach Dyer")
    print("")
    print("Use easy to use commands to quickly move the turtle without breaking it. This script can move the turtle any length you define.")
    print("")
    print("Press enter to continue")
    read()
    term.clear()
    term.setCursorPos(1,1)
    print("USAGE:")
    print("Move Forward: type 'command forward <length>'")
    print("Move Back: type 'command back <length>'")
    print("Move Up: type 'command up <length>'")
    print("Move Down: type 'command up <length>'")
    print("Turn Around: type 'command turnaround'")
    print("Turn Left: type 'command left'")
    print("Turn Right: type 'command right'")
end


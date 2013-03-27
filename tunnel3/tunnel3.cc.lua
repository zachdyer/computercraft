local args = {...}
length = args[1]

function digForward()
    turtle.dig()
    while turtle.forward == false
        turtle.dig();
    end
end

function gravelDig()
   while turtle.dig() == true
        turtle.dig()
   end
end

if length == nil then
  print("==== Tunnel 3 x 3 v1.0 ====")
  print("By Zach Dyer")
  print(" ")
  print("length - Length of blocks to tunnel.")
  print(" ")
  print("Usages: ")
  print("tunnel3 <length>")
else
    for j=1,length,1 do
    	digForward()
    	for i=1,3,1 do
        	  turtle.turnLeft()
        	  gravelDig()
        	  turtle.turnRight()
        	  turtle.turnRight()
        	  gravelDig()
        	  turtle.turnLeft()
        	  if i <= 2 then
        		turtle.digUp()
        		turtle.up()
        	  end	  
        end
    	turtle.down()
    	turtle.down()
    end
end
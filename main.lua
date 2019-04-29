display.setDefault( "background", 255, 0, 3 )
local calculateButton = display.newImageRect( "Button.png", 200, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"

print( "Pick a number from 1 to 6: " )


answerAsNumberField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 225, 40 )
answerAsNumberField.id = "Answer textField"

responseText = display.newText( "choose a number between 1 and 6", 160, 300, native.systemFont, 20 )
responseText:setFillColor( 50, 40, 0 )


local function calculateButtonTouch( event )

math.randomseed( os.time() )

local numberToGuess = math.random( 1, 6 )


local answerAsNumber = tonumber(answerAsNumberField.text)

if numberToGuess == answerAsNumber then
  	
  	print("")
    
    print( "Correct" )
    
    print( " Play Again" )
    
    responseText.text = "Correct"

else 
	print("")

	print( "wrong answer")

	print( "The right answer is", numberToGuess)
	
	print( "Play Again" )

	responseText.text = "Wrong answer Try again"
end

end

calculateButton:addEventListener( "touch",calculateButtonTouch )

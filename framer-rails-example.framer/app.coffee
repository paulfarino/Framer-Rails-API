{InputField} = require 'InputField'

# Inputs
nameInput = new InputField
	name: "nameInput"
	type: "text"
	width:  Screen.width
	height: 132
	y: 0
	color: "#696969"
	backgroundColor: "#f5f5f5"
	indent:   48
	fontSize: 48
	fontWeight: 600
	placeHolder: "Name"
	placeHolderColor: "silver"
	value: ""

titleInput = new InputField
	name: "titleInput"
	type: "text"
	width: Screen.width
	height: 132
	y: 160
	color: "#696969"
	backgroundColor: "#f5f5f5"
	indent: 48
	fontSize: 48
	fontWeight: 600
	placeHolder: "Title"
	placeHolderColor: "silver"
	value: ""

# Submit Button
submitBtn = new Layer
	y: 320
	width: Screen.width
	height: 80
	html: "submit"
submitBtn.style = 
	"line-height" : "80px"
	"text-align" : "center"

# Submit POST request
submitBtn.onClick ->
	xhr = new XMLHttpRequest

	# Change the below URL to the Rails-API endpoint
	xhr.open 'POST', 'http://localhost:3000/notes', true
	xhr.setRequestHeader 'Content-type', 'application/x-www-form-urlencoded'
	
	xhr.onreadystatechange = ->
		if xhr.readyState == XMLHttpRequest.DONE and xhr.status == 200
	
		else
		return

	xhr.send "name=#{(nameInput.value)}&title=#{(titleInput.value)}"
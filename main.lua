require("Libs/Library") -- One of the defualt libraies that i load... Not needed for this project
require("Libs/bin") -- One of the defualt libraies that i load... Not needed for this project
require("Libs/MultiManager") -- allows for multitasking
require("Libs/lovebind") -- binds my libraies to the love2d engine that i am using
require("GuiManager") -- allows the use of graphics in the program.
require("net") -- Loads the networking library
gui.ff.BorderSize=0
app=gui:newImageLabel("bg.jpg",0,0,0,0,0,0,1,1)
app.BorderSize=0
app.topbar=app:newFrame("Header",0,0,0,0,0,0,1,.066666)
app.topbar:ApplyGradient{Color.new(0,0,0),Color.new(25,25,25)}
app.topbar.left=app.topbar:newImageLabel("left.png",0,0,0,0,0,0,.0625,1)
app.topbar.right=app.topbar:newImageLabel("right.png",0,0,0,0,.9375,0,.0625,1)
app.topbar.AppView=app.topbar:newFrame("Apps",0,0,0,0,0,.125,.825,.75)
gui.massMutate({
	Color=Color.new(135,135,135),
	[[OnEnter(function(self)
		self.Color=Color.new(255,255,255)
	end)]],
	[[OnExit(function(self)
		self.Color=Color.new(135,135,135)
	end)]],
},app.topbar.left,app.topbar.right,app.topbar.AppView)
app.topbar.AppView:centerX()
app.topbar.AppView.Visibility=.3
app.topbar.AppView:setRoundness(10,10,306)
-- needs to mimic the screens resolution that you are interacting with
app.mouseInterface=app:newFrame("MouseControl",0,0,0,0,0,.55,.8,.3)
app.mouseInterface:centerX()
app.mouseInterface:setRoundness(10,10,306)
app.mouseInterface:ApplyGradient{Color.new(0,0,0),Color.new(15,15,15)}
app.mediacontrol=app:newFrame("MControl",0,0,0,0,.02,.9,.96,.09)
app.mediacontrol:setRoundness(10,10,306)
app.mediacontrol.Color=Color.new(10,15,10)
-- Buttons
app.mediacontrol.Rewind=app.mediacontrol:newImageLabel("rewind.png",0,0,0,0,.045,0,.11,.8)
app.mediacontrol.Rewind:centerY()
app.mediacontrol.Pause=app.mediacontrol:newImageLabel("pause.png",0,0,0,0,.245,0,.11,.8)
app.mediacontrol.Pause:centerY()
app.mediacontrol.Play=app.mediacontrol:newImageLabel("play.png",0,0,0,0,.445,0,.11,.8)
app.mediacontrol.Play:centerY()
app.mediacontrol.Stop=app.mediacontrol:newImageLabel("stop.png",0,0,0,0,.645,0,.11,.8)
app.mediacontrol.Stop:centerY()
app.mediacontrol.FastForward=app.mediacontrol:newImageLabel("fastforward.png",0,0,0,0,.845,0,.11,.8)
app.mediacontrol.FastForward:centerY()
--print(app.mediacontrol.Rewind,app.mediacontrol.Pause,app.mediacontrol.Play,app.mediacontrol.Stop,app.mediacontrol.FastForward)
gui.massMutate({
	Color=Color.light_blue,
	[[OnEnter(function(self)
		self.Color=Color.Lighten(Color.light_blue,.25)
	end)]],
	[[OnExit(function(self)
		self.Color=Color.light_blue
	end)]],
},app.mediacontrol.Rewind,app.mediacontrol.Pause,app.mediacontrol.Play,app.mediacontrol.Stop,app.mediacontrol.FastForward)

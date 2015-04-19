package Util
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import Main.GameEngine;
	
	/**
	 * @author Zach
	 * This class deals with the Slider used in the graphics and sound menus.
	 */
	public class Slider extends Entity
	{
		
		private var backOfSlide:Image;//Declares the slider track
		private var slider:Image;//Declares the slider knob
		private var textImage:Image;//Declares the Text image that appears over the slider
		
		private var lastMouseX:int;//Holds the mouse's last X value
		
		/**
		 * Constructor that sets up needed variables and adds images
		 * @param	someX
		 * @param	someY
		 * @param	someHeight
		 * @param	someWidth
		 */
		public function Slider(trackImg:Image, knobImg:Image, location:int, someX:int, someY:int, someHeight:int, someWidth:int)
		{
			
			backOfSlide = trackImg;//Assigns trackImg to backOfSlide
			slider = knobImg;//Assigns knobImg to slider
			
			this.x = someX;//Sets the Entities X value to someX
			this.y = someY;//Sets the Entities Y value to someY
			this.height = someHeight;//Sets the Entities height value to someHeight
			this.width = someWidth;//Sets the Entities width value to someWidth
			backOfSlide.y += 15;//adds 15 to the backOfSlide's Y position. This is to make it look like it's halfway down the slider knob
			addGraphic(backOfSlide);//Add the back of the slider to appear on screen
			addGraphic(slider);//Add the slider to appear on screen
			lastMouseX = 0;//Set the last X position of the mouse to 0
			slider.x += location;//Adds location to the slider's x position
			
		}
		
		/**
		 * Overridden update function that now checks if the mouse is within a certain hit box and if it is, then the slider will move.
		 */
		override public function update():void
		{
			if (Input.mouseDown)
			{
				if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					
					lastMouseX = Input.mouseX;
					slider.x = lastMouseX - (x + 7); //Just used plus 7 because the slider is 15 pixels thick so when you drag it to 0 it will overlap the bar by about half of the slider.
					
				}
			}
		}
		
		/**
		 * This returns a number value. It finds what percentage of the slider track the slider is up and then returns that percentage as a number.
		 * @return
		 */
		public function getValuePercent():Number
		{
			if (lastMouseX == 0)//If lastMouseX = 0 then return 100
			{
				return 100;
			}
			else
			{
				return 100 * ((lastMouseX - x) / 250) + 1;//Else return the percentage of the slider track that the slider is up.
			}
		}
		/**
		 * Sets the Text Image to a specific location above the slider
		 * @param	someImage
		 */
		public function setTextImage(someImage:Image):void {
			textImage = someImage;//Assigns someImage to textImage
			textImage.x += 25;//Adds 25 to the x position
			textImage.y -= 75;//Subtracts 75 from the y position
			addGraphic(textImage);//Adds the image
		}
	
	}

}
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
		
		public var backOfSlide:Image = GameEngine.theLoader.sliderTrack;//Assigns the image of the slider track to backOfSlide
		public var slider:Image = GameEngine.theLoader.sliderKnob;//Assigns the sliderKnob to slider
		
		private var lastMouseX:int;//Holds the mouse's last X value
		
		/**
		 * Constructor that sets up needed variables and adds images
		 * @param	someX
		 * @param	someY
		 * @param	someHeight
		 * @param	someWidth
		 */
		public function Slider(someX:int, someY:int, someHeight:int, someWidth:int)
		{
			this.x = someX;//Sets the Entities X value to someX
			this.y = someY;//Sets the Entities Y value to someY
			this.height = someHeight;//Sets the Entities height value to someHeight
			this.width = someWidth;//Sets the Entities width value to someWidth
			backOfSlide.y += 15;//adds 15 to the backOfSlide's Y position. This is to make it look like it's halfway down the slider knob
			addGraphic(backOfSlide);//Add the back of the slider to appear on screen
			addGraphic(slider);//Add the slider to appear on screen
			lastMouseX = 0;//Set the last X position of the mouse to 0
		
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
		 * This returns and integer value. It finds what percentage of the slider track the slider is up and then returns that percentage as an int.
		 * @return
		 */
		public function getValuePercent():int
		{
			if (lastMouseX == 0)//If lastMouseX = 0 then return 0
			{
				return 0;
			}
			else
			{
				return 100 * ((lastMouseX - x) / 250) + 1;//Else return the percentage of the slider track the the slider is up.
			}
		}
	
	}

}
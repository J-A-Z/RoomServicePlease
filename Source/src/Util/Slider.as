package Util
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import Main.GameEngine;
	
	/**
	 * @author Zach
	 */
	public class Slider extends Entity
	{
		
		public var backOfSlide:Image = GameEngine.theLoader.sliderTrack;
		public var slider:Image = GameEngine.theLoader.sliderKnob;
		
		private var lastMouseX:int;
		
		public function Slider(someX:int, someY:int, someHeight:int, someWidth:int)
		{
			this.x = someX;
			this.y = someY;
			this.height = someHeight;
			this.width = someWidth;
			backOfSlide.y += 15;
			addGraphic(backOfSlide);
			addGraphic(slider);
			lastMouseX = 0;
		
		}
		
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
		
		public function getValuePercent():int
		{
			if (lastMouseX == 0)
			{
				return 0;
			}
			else
			{
				return 100 * ((lastMouseX - x) / 250) + 1;
			}
		}
	
	}

}
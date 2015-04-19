package Menus
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Slider;
	import net.flashpunk.utils.Draw;
	
	/**
	 * @author Amanda
	 * The graphics menu where you are able to change the brightness
	 */
	public class GFXOptionMenu extends World
	{
		private var slider:Slider;//Creates a slider
		private var brightness:int;//Creates a brightness integer variable
		private var foreGround:Image;//Creates a foreGround image variable
		
		/**
		 * The constructor sets up the slider, foreGround and adds the background image, the slider and the foreground to the world.
		 */
		public function GFXOptionMenu()
		{
			slider = new Slider(275, 350, 40, 250);//Slider will be placed at 275,350 and will be 250 wide and 40 high.
			foreGround = GameEngine.theLoader.foreScreen;//Gets the foreGround screen
			foreGround.alpha = 0;//Sets the opacity to 0
			addGraphic(GameEngine.theLoader.graphicsScreen, 0, 0, 0);//Adds the background
			add(slider);//Adds the slider image
			addGraphic(foreGround, 0, 0, 0);//Then adds the foreGround
			
		
		}
		
		/**
		 * Overridden update method that will adjust brightness and then do it's normal update functions
		 */
		override public function update():void
		{
			if (slider != null)//If slider is not null
			{
				brightness = slider.getValuePercent();//Get the percentage of the slider
				foreGround.alpha = brightness / 200;//Brightness is divided by 200 so that the opacity will never be more than .5
			}
			super.update();//Perform normal update functions
			
		}
	}

}
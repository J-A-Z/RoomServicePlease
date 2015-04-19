package Menus
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Slider;
	import net.flashpunk.utils.Draw;
	import net.flashpunk.FP;
	import Util.Button;
	
	/**
	 * @author Amanda
	 * The graphics menu where you are able to change the brightness
	 */
	public class GFXOptionMenu extends World
	{
		private var brightnessSlider:Slider;
		/**
		 * The constructor sets up the slider and adds the background image.
		 */
		public function GFXOptionMenu()
		{
			
			brightnessSlider = new Slider(GameEngine.theLoader.brightSliderTrack, GameEngine.theLoader.brightSliderKnob, 243, 275, 350, 40, 250);//Sets up the slider
			brightnessSlider.setTextImage(GameEngine.theLoader.brightnessLabel);//Sets up the Slider's Text Image
			addGraphic(GameEngine.theLoader.graphicsScreen, 0, 0, 0);//Adds the Background to the world
			add(brightnessSlider);//Adds the brightness slider
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));//Adds a back Arrow
		
		}
		
		/**
		 * Overridden update method that will adjust brightness and then do it's normal update functions
		 */
		override public function update():void
		{
			super.update();//Perform normal update functions
			if (brightnessSlider != null)//If brightness slider is not null
			{
				
				var brightness:Number = ((100 - brightnessSlider.getValuePercent()) / 2) / 100;//Get the percentage of the slider and assign that value to brightness
				
				if (brightness <= 0) {//If brightness is less than or equal to 0 then brightness = 0
					brightness = 0;
				}
				
				GameEngine.instance.setBrightness(brightness);//Sets the Brightness for all worlds
				
			}
			
			super.update();//Performs the normal update functions
			
		}
		/**
		 * This method will move back to the previous menu when the back button is pressed
		 */
		private function pageBack():void {
			
			FP.world = GameEngine.optionsMenu;//Changes to the options menu
			
		}
		
	}

}
package Menus 
{
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Slider;
	import net.flashpunk.FP;
	import Util.Button;
	
	/**
	 * @author Amanda
	 * This class will be used to create the Sound/Audio menu where the user will be able to adjust the volume. Currently there is no sound. So, there is nothing to adjust.
	 */
	public class AudioOptionsMenu extends World
	{
		
		private var volumeSlider:Slider;//Declares the volume slider
		
		/**
		 * The constructor sets up the slider and it's text image, it also adds the background and the back button.
		 */
		public function AudioOptionsMenu() 
		{
			
			volumeSlider = new Slider(GameEngine.theLoader.volSliderTrack, GameEngine.theLoader.volSliderKnob, 125, 275, 350, 40, 250);//Sets up the slider
			volumeSlider.setTextImage(GameEngine.theLoader.volumeLabel);//Sets up the text image that goes above the slider
			addGraphic(GameEngine.theLoader.soundScreen, 0, 0, 0);//Adds the background
			add(volumeSlider);//Adds the slider
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));//Adds the back button
			
		}
		
		/**
		 * This method will switch from the current menu back to the options menu
		 */
		private function pageBack():void {
			
			FP.world = GameEngine.optionsMenu;
			
		}
		
	}

}
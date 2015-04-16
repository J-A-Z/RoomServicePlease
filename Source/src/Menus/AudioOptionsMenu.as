package Menus 
{
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Slider;
	import net.flashpunk.FP;
	import Util.Button;
	
	/**
	 * @author Amanda
	 */
	public class AudioOptionsMenu extends World
	{
		
		private var volumeSlider:Slider;
		
		public function AudioOptionsMenu() 
		{
			
			volumeSlider = new Slider(GameEngine.theLoader.volSliderTrack, GameEngine.theLoader.volSliderKnob, 125, 275, 350, 40, 250);
			addGraphic(GameEngine.theLoader.soundScreen, 0, 0, 0);
			add(volumeSlider);
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		private function pageBack():void {
			
			FP.world = GameEngine.optionsMenu;
			
		}
		
	}

}
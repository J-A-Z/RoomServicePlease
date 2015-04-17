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
	 */
	public class GFXOptionMenu extends World
	{
		private var brightnessSlider:Slider;
		
		public function GFXOptionMenu()
		{
			
			brightnessSlider = new Slider(GameEngine.theLoader.brightSliderTrack, GameEngine.theLoader.brightSliderKnob, 243, 275, 350, 40, 250);
			brightnessSlider.setTextImage(GameEngine.theLoader.brightnessLabel);
			addGraphic(GameEngine.theLoader.graphicsScreen, 0, 0, 0);
			add(brightnessSlider);
			
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
		
		}
		
		override public function update():void
		{
			if (brightnessSlider != null)
			{
				
				var brightness:Number = ((100 - brightnessSlider.getValuePercent()) / 2) / 100;
				
				if (brightness <= 0) {
					brightness = 0;
				}
				
				GameEngine.instance.setBrightness(brightness);
				
			}
			
			super.update();
			
		}
		
		private function pageBack():void {
			
			FP.world = GameEngine.optionsMenu;
			
		}
		
	}

}
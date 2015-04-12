package Menus
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Slider;
	import net.flashpunk.utils.Draw;
	
	/**
	 * @author Amanda
	 */
	public class GFXOptionMenu extends World
	{
		private var slider:Slider;
		private var brightness:int;
		private var foreGround:Image;
		public function GFXOptionMenu()
		{
			slider = new Slider(275, 350, 40, 250);
			foreGround = GameEngine.theLoader.foreScreen;
			foreGround.alpha = 0;
			addGraphic(GameEngine.theLoader.graphicsScreen, 0, 0, 0);
			add(slider);
			addGraphic(foreGround, 0, 0, 0);
			
		
		}
		
		override public function update():void
		{
			if (slider != null)
			{
				brightness = slider.getValuePercent();
				foreGround.alpha = brightness / 200;
			}
			super.update();
			
		}
	}

}
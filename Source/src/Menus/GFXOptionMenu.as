package Menus
{
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
		private var volume:int;
		public function GFXOptionMenu()
		{
			slider = new Slider(275, 350, 40, 250);
			addGraphic(GameEngine.theLoader.graphicsScreen, 0, 0, 0);
			add(slider);
		
		}
		
		override public function update():void
		{
			if (slider != null)
			{
				volume = slider.getValuePercent();
			}
			super.update();
			
		}
	}

}
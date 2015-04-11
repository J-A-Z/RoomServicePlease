package Menus 
{
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Slider;
	/**
	 * @author Amanda
	 */
	public class GFXOptionMenu extends World
	{
		
		public function GFXOptionMenu() 
		{
			addGraphic(GameEngine.theLoader.graphicsScreen, 0, 0, 0);
			add(new Slider(275, 350, 40, 250));
			
		}
		
	}

}
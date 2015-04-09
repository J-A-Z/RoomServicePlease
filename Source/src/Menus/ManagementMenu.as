package Menus 
{
	import net.flashpunk.Engine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.utils.Draw;
	import Util.Button;
	import Main.GameEngine;
	
	/**
	 * @author Amanda
	 */
	public class ManagementMenu extends World
	{
		
		public function ManagementMenu() 
		{
			addGraphic(GameEngine.theLoader.managementScreen, 0, 0, 0);
		}
		
	}

}
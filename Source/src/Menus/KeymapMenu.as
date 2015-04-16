package Menus 
{
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Button;
	import net.flashpunk.FP;
	
	/**
	 * @author Amanda
	 */
	public class KeymapMenu extends World
	{
		
		public function KeymapMenu() 
		{
			
			addGraphic(GameEngine.theLoader.controlsScreen, 0, 0, 0);

			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		private function pageBack():void {
			
			FP.world = GameEngine.optionsMenu;
			
		}
		
	}

}
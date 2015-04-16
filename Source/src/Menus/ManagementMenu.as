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
			
			add(new Button(reportBug, GameEngine.theLoader.bugButtonN, GameEngine.theLoader.bugButtonH, FP.halfWidth - 100, FP.halfHeight - 50, 50, 200));//Changed placement of buttons.
			add(new Button(checkUpdate, GameEngine.theLoader.updateButtonN, GameEngine.theLoader.updateButtonH, FP.halfWidth - 100, FP.halfHeight + 50, 50, 200));

			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		private function reportBug():void {
			
		}
		
		private function checkUpdate():void {
			
		}
		
		private function pageBack():void {
			
			FP.world = GameEngine.mainMenu;
			
		}
		
	}

}
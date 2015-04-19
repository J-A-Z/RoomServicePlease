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
	 * This class will handle the report bug and update buttons.
	 */
	public class ManagementMenu extends World
	{
		/**
		 * The ManagementMenu constructor sets the background, then adds the buttons
		 */
		public function ManagementMenu() 
		{
			addGraphic(GameEngine.theLoader.managementScreen, 0, 0, 0);
			
			add(new Button(reportBug, GameEngine.theLoader.bugButtonN, GameEngine.theLoader.bugButtonH, FP.halfWidth - 100, FP.halfHeight - 50, 50, 200));//Adds reportBug button
			add(new Button(checkUpdate, GameEngine.theLoader.updateButtonN, GameEngine.theLoader.updateButtonH, FP.halfWidth - 100, FP.halfHeight + 50, 50, 200));//Adds checkUpdate button
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));//Adds pageBack button
			
		}
		
		/**
		 * Currently does nothing
		 */
		private function reportBug():void {
			
		}
		
		/**
		 * Currently does nothing
		 */
		private function checkUpdate():void {
			
		}
		
		/**
		 * Switches form the ManagementMenu to the mainMenu
		 */
		private function pageBack():void {
			
			FP.world = GameEngine.mainMenu;
			
		}
		
	}

}
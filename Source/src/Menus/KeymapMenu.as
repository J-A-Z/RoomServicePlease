package Menus 
{
	import net.flashpunk.World;
	import Main.GameEngine;
	import Util.Button;
	import net.flashpunk.FP;
	
	/**
	 * @author Amanda
	 * This class will create the controls menu where the player will be able to adjust the controls to what ever button they'd like.
	 */
	public class KeymapMenu extends World
	{
		/**
		 * This constructor sets up the background and the back button
		 */
		public function KeymapMenu() 
		{
			
			addGraphic(GameEngine.theLoader.controlsScreen, 0, 0, 0);//Adds the background image
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));//Adds the back button
			
		}
		
		/**
		 * This method will switch from the current menu to the options menu
		 */
		private function pageBack():void {
			
			FP.world = GameEngine.optionsMenu;
			
		}
		
	}

}
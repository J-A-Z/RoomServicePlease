package Menus 
{
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import Util.Button;
	import Main.GameEngine;
	
	/**
	 * ...
	 * @author Amanda
	 * 
	 * Creates the pause menu to be displayed when playing the game. The options on this page includes
	 * save progress, open options, return to main menu, and go back to the game. 
	 */
	public class PausedMenu extends World
	{
		
		private var returnWorld:World;
		
		public function PausedMenu() 
		{
			
			addGraphic(GameEngine.theLoader.pauseScreen, 0, 0, 0); //Sets up the location of the pause screen image. 

			add(new Button(saveProgress, GameEngine.theLoader.saveButtonN, GameEngine.theLoader.saveButtonH, FP.halfWidth - 100, FP.halfHeight - 100, 50, 200)); //Adds the save progress button.
			add(new Button(options, GameEngine.theLoader.optionsButtonN, GameEngine.theLoader.optionsButtonH, FP.halfWidth - 100, FP.halfHeight + 100, 50, 200)); // Adds the options button.
			add(new Button(mainMenu, GameEngine.theLoader.menuButtonN, GameEngine.theLoader.menuButtonH, FP.halfWidth - 100, FP.halfHeight, 50, 200)); //Adds the menu button.
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60)); //Adds the page back button. 
			
		}
		
		/**
		 * Sets the world by taking in a type of someWorld to be used in the pageBack fucntion. 
		 */
		public function setWorld(someWorld:World):void {
			
			returnWorld = someWorld;
			
		}
		
		/**
		 * Not yet implemented. This allows the user to save the progress of the game. 
		 */
		private function saveProgress(): void
		{
			
		}
		
		/**
		 * Returns to the main menu of the game. 
		 */
		private function mainMenu(): void
		{
			
			FP.world = GameEngine.mainMenu;
			
		}
		
		/**
		 * Opens up the options to make audio, graphical, or keybinding changes. 
		 */
		private function options():void
		{
			
			FP.world = GameEngine.optionsMenu;
			
			GameEngine.optionsMenu.setPreviousMenu(this);
			
		}
		
		/**
		 * Returns the back to the level. 
		 */ 
		private function pageBack():void
		{
			
		if (returnWorld != null) {
			
			FP.world = returnWorld;
			
		}
		
		}
		
	}

}
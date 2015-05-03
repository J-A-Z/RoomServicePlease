package Menus
{
	import Entities.Player;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import Util.Button;
	import Main.GameEngine;
	import flash.net.SharedObject;
	
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
		public function setWorld(someWorld:World):void
		{
			
			returnWorld = someWorld;
		
		}
		
		/**
		 * Not yet implemented. This allows the user to save the progress of the game.
		 */
		private function saveProgress():void
		{
			var saveSelected:SharedObject = SharedObject.getLocal("Selected_Save");
			
			if (saveSelected.data.Selected == "1")
			{
				var sharedData:SharedObject = SharedObject.getLocal("Save_File_1");
				var somePlayer:Player;
				somePlayer = returnWorld.getInstance("player");
				if (somePlayer != null)
				{
					sharedData.data.WorldFloor = String(returnWorld).substr(8).slice(0,-1);
					sharedData.data.PlayerX = somePlayer.x;
					sharedData.data.PlayerY = somePlayer.y;
					sharedData.flush();
				}
				
			}
			
			if (saveSelected.data.Selected == "2")
			{
				var sharedData2:SharedObject = SharedObject.getLocal("Save_File_2");
				var somePlayer2:Player;
				somePlayer2 = returnWorld.getInstance("player");
				if (somePlayer2 != null)
				{
					
					
					sharedData2.data.WorldFloor = String(returnWorld).substr(8).slice(0,-1);
					sharedData2.data.PlayerX = somePlayer2.x;
					sharedData2.data.PlayerY = somePlayer2.y;
					sharedData2.flush();
				}
			}
			if (saveSelected.data.Selected == "3")
			{
				var sharedData3:SharedObject = SharedObject.getLocal("Save_File_3");
				var somePlayer3:Player;
				somePlayer3 = returnWorld.getInstance("player");
				if (somePlayer3 != null)
				{	
					sharedData3.data.WorldFloor = String(returnWorld).substr(8).slice(0,-1);
					sharedData3.data.PlayerX = somePlayer3.x;
					sharedData3.data.PlayerY = somePlayer3.y;
					sharedData3.flush();
				}
			}
		
		}
		
		/**
		 * Returns to the main menu of the game.
		 */
		private function mainMenu():void
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
			
			if (returnWorld != null)
			{
				
				FP.world = returnWorld;
				
			}
		
		}
	
	}

}
package Menus
{
	import net.flashpunk.Engine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.utils.Draw;
	import Util.Button;
	import Main.GameEngine;
	import Worlds.Floors.FloorOne;
	
	/**
	 * @author Zach
	 * This class sets up the Main menu and all of it's buttons.
	 */
	public class MainMenu extends World
	{
		/**
		 * Adds the background image and all of the buttons
		 */
		public function MainMenu()
		{
			addGraphic(GameEngine.theLoader.mainMenuScreen, 0, 0, 0);//Adds the background image
			add(new Button(playMenu,GameEngine.theLoader.playButtonN,GameEngine.theLoader.playButtonH, 300, 350, 50, 200));//Adds the Play button
			add(new Button(optionsMenu, GameEngine.theLoader.optionsButtonN, GameEngine.theLoader.optionsButtonH, 300, 400, 50, 200));//Adds the options button
			add(new Button(managementMenu, GameEngine.theLoader.managementButtonN, GameEngine.theLoader.managementButtonH, 300, 450, 50, 200));//Adds the management button
			
		}
		
		/**
		 * Method that switches from the main menu to the play menu
		 */
		private function playMenu():void {
			
			FP.world = GameEngine.playMenu;
			
		}
		
		/**
		 * Method that switches from the main menu to the options menu and setsup the previous menu
		 */
		private function optionsMenu():void {
			
			FP.world = GameEngine.optionsMenu;
			
			GameEngine.optionsMenu.setPreviousMenu(this);//Sets options previous menu to main menu
			
		}
		
		/**
		 * Method that switches from the main menu to the management menu
		 */
		private function managementMenu():void {
			
			FP.world = GameEngine.managementMenu;
			
		}
		
	}

}
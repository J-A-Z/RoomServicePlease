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
	 * This class creates the options menu that includes the graphics button, the sound button and the controls button, which lead to their respective menus.
	 */
	public class OptionsMenu extends World
	{
		
		private var previousMenu:World = GameEngine.mainMenu;//Sets previousMenu to the main menu
		
		/**
		 * The OptionsMenu Constructor sets up the background and all the buttons
		 */
		public function OptionsMenu() 
		{
			addGraphic(GameEngine.theLoader.optionsScreen, 0, 0, 0);//Adds the background image
			
			add(new Button(gfxOptionMenu, GameEngine.theLoader.graphicsButtonN, GameEngine.theLoader.graphicsButtonH, FP.halfWidth - 100, FP.halfHeight - 100, 50, 200));//Adds the graphics button
			add(new Button(audioMenu, GameEngine.theLoader.soundButtonN, GameEngine.theLoader.soundButtonH, FP.halfWidth - 100, FP.halfHeight, 50, 200));//Adds the sound button
			add(new Button(keymapMenu, GameEngine.theLoader.controlsButtonN, GameEngine.theLoader.controlsButtonH, FP.halfWidth - 100, FP.halfHeight + 100, 50, 200));//Adds the controls button
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));//Adds the back button
			
		}
		
		/**
		 * This method will switch from the options menu to the Graphics menu
		 */
		private function gfxOptionMenu(): void 
		{
			FP.world = GameEngine.GFXOptionsMenu;
		}
		
		/**
		 * This method will switch from the options menu to the Sound menu
		 */
		private function audioMenu(): void
		{
			FP.world = GameEngine.audioOptionsMenu;
		}
		
		/**
		 * This method will switch from the options menu to the Controls menu
		 */
		private function keymapMenu(): void
		{
			FP.world = GameEngine.keymapMenu;
		}
		
		/**
		 * This method will switch from the options menu back to the previous menu
		 */
		private function pageBack():void {
			
			FP.world = previousMenu;
			
		}
		
		/**
		 * This method will instantiate previousMenu to a different menu, if necessary
		 */
		public function setPreviousMenu(someMenu:World):void {
			
			previousMenu = someMenu;
			
		}
		
	}

}

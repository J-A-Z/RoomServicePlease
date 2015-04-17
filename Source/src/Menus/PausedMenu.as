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
	 */
	public class PausedMenu extends World
	{
		
		private var returnWorld:World;
		
		public function PausedMenu() 
		{
			
			addGraphic(GameEngine.theLoader.pauseScreen, 0, 0, 0);

			add(new Button(saveProgress, GameEngine.theLoader.saveButtonN, GameEngine.theLoader.saveButtonH, FP.halfWidth - 100, FP.halfHeight - 100, 50, 200));
			add(new Button(options, GameEngine.theLoader.optionsButtonN, GameEngine.theLoader.optionsButtonH, FP.halfWidth - 100, FP.halfHeight + 100, 50, 200));
			add(new Button(mainMenu, GameEngine.theLoader.menuButtonN, GameEngine.theLoader.menuButtonH, FP.halfWidth - 100, FP.halfHeight, 50, 200));
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		public function setWorld(someWorld:World):void {
			
			returnWorld = someWorld;
			
		}
		
		private function saveProgress(): void
		{
			
		}
		
		private function mainMenu(): void
		{
			
			FP.world = GameEngine.mainMenu;
			
		}
		
		private function options():void
		{
			
			FP.world = GameEngine.optionsMenu;
			
			GameEngine.optionsMenu.setPreviousMenu(this);
			
		}
		
		private function pageBack():void
		{
			
		if (returnWorld != null) {
			
			FP.world = returnWorld;
			
		}
		
		}
		
	}

}
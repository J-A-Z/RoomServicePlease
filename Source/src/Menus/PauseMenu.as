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
	 * ...
	 * @author Amanda Alvarez
	 */
	public class PauseMenu 
	{
		public function PauseMenu() 
		{
			addGraphic(GameEngine.theLoader.pauseScreen, 0, 0, 0);

			add(new Button(save, GameEngine.theLoader.saveButtonN, GameEngine.theLoader.saveButtonH, FP.halfWidth - 100, FP.halfHeight - 100, 50, 200));
			add(new Button(mainMenu, GameEngine.theLoader.menuButtonN, GameEngine.theLoader.menuButtonH, FP.halfWidth - 100, FP.halfHeight, 50, 200));
			//add(new Button(mainMenu, GameEngine.theLoader.menuButtonN, GameEngine.theLoader.menuButtonH, FP.halfWidth - 100, FP.halfHeight + 100, 50, 200));

			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		private function resume(): void 
		{
			
		}
		
		private function save(): void
		{
			
		}
		
		private function mainMenu(): void
		{
			FP.world = GameEngine.mainMenu;
		}
		
		private function pageBack():void
		{
			
			
			
		}
		
		
	}

}
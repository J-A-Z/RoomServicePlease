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
	 */
	public class MainMenu extends World
	{
		
		public function MainMenu()
		{
			addGraphic(GameEngine.theLoader.mainMenuScreen, 0, 0, 0);
			add(new Button(playMenu,GameEngine.theLoader.playButtonN,GameEngine.theLoader.playButtonH, 300, 350, 50, 200));
			add(new Button(optionsMenu, GameEngine.theLoader.optionsButtonN, GameEngine.theLoader.optionsButtonH, 300, 400, 50, 200));
			add(new Button(managementMenu, GameEngine.theLoader.managementButtonN, GameEngine.theLoader.managementButtonH, 300, 450, 50, 200));
			
		}
		
		private function playMenu():void {
			//FP.world = GameEngine.playMenu;
			
			FP.world = new FloorOne;
			
		}
		
		private function optionsMenu():void {
			FP.world = GameEngine.optionsMenu
			
		}
		
		private function managementMenu():void {
			FP.world = GameEngine.managementMenu;
			
		}
		
	}

}
package Menus 
{
	import net.flashpunk.Engine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.utils.Draw;
	import Util.Button;
	import Main.GameEngine;
	import Util.InputHandler;
	import Util.PlayerHUD;
	import Worlds.Floors.FloorOne;
	
	/**
	 * @author Amanda
	 *
	 */
	
	public class PlayMenu extends World
	{
		
		private var fileOneX:int = FP.halfWidth - 350;
		private var fileTwoX:int = FP.halfWidth - 110;
		private var fileThreeX:int = FP.halfWidth + 130;
		
		private var selectedFile:int = 1;
		
		public function PlayMenu() 
		{
			addGraphic(GameEngine.theLoader.playScreen, 0, 0, 0);
			
			add(new Button(selectFileOne, GameEngine.theLoader.fileOneS, GameEngine.theLoader.fileOneH, fileOneX, FP.halfHeight - 50, 115, 220));
			add(new Button(selectFileTwo, GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH, fileTwoX, FP.halfHeight - 50, 115, 220));
			add(new Button(selectFileThree, GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH, fileThreeX, FP.halfHeight - 50, 115, 220));
			
			add(new Button(startTutorial, GameEngine.theLoader.tutorialButtonN, GameEngine.theLoader.tutorialButtonH, FP.halfWidth - 100, 170, 50, 200));
			
			add(new Button(playSelected, GameEngine.theLoader.playButtonN, GameEngine.theLoader.playButtonH, fileOneX + 10, FP.halfHeight + 70, 50, 200));
			add(new Button(deleteSelected, GameEngine.theLoader.deleteButtonN, GameEngine.theLoader.deleteButtonH, fileOneX + 10, FP.halfHeight + 125, 50, 200));
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		private function selectFileOne():void {
			
		}
		
		private function selectFileTwo():void {
			
		}
		
		private function selectFileThree():void {
			
		}
		
		private function startTutorial():void {
			
			FP.world = new FloorOne;
			
		}
		
		private function playSelected():void {
			
		}
		
		private function deleteSelected():void {
			
		}
		
		private function pageBack():void {
			
			FP.world = GameEngine.mainMenu;
			
		}
		
		
		
	}

}
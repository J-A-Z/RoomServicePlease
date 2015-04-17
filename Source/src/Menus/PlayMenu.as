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
		
		private var fileOneButton:Button, fileTwoButton:Button, fileThreeButton:Button, playButton:Button, deleteButton:Button;
		
		public function PlayMenu() 
		{
			addGraphic(GameEngine.theLoader.playScreen, 0, 0, 0);
			
			fileOneButton = new Button(selectFileOne, GameEngine.theLoader.fileOneS, GameEngine.theLoader.fileOneH, fileOneX, FP.halfHeight - 50, 115, 220);
			fileTwoButton =  new Button(selectFileTwo, GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH, fileTwoX, FP.halfHeight - 50, 115, 220);
			fileThreeButton = new Button(selectFileThree, GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH, fileThreeX, FP.halfHeight - 50, 115, 220);
			
			add(fileOneButton);
			add(fileTwoButton);
			add(fileThreeButton);
			
			playButton = new Button(playSelected, GameEngine.theLoader.playButtonN, GameEngine.theLoader.playButtonH, fileOneX + 10, FP.halfHeight + 70, 50, 200);
			deleteButton = new Button(deleteSelected, GameEngine.theLoader.deleteButtonN, GameEngine.theLoader.deleteButtonH, fileOneX + 10, FP.halfHeight + 125, 50, 200);
			
			add(new Button(startTutorial, GameEngine.theLoader.tutorialButtonN, GameEngine.theLoader.tutorialButtonH, FP.halfWidth - 100, 170, 50, 200));
			
			add(playButton);
			add(deleteButton);
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
		}
		
		private function selectFileOne():void {
			
			fileOneButton.setImages(GameEngine.theLoader.fileOneS, GameEngine.theLoader.fileOneS);
			fileTwoButton.setImages(GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH);
			fileThreeButton.setImages(GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH);
			
			playButton.setX(fileOneX + 10);
			deleteButton.setX(fileOneX + 10);
			
			selectedFile = 1;
			
		}
		
		private function selectFileTwo():void {
			
			fileOneButton.setImages(GameEngine.theLoader.fileOneN, GameEngine.theLoader.fileOneH);
			fileTwoButton.setImages(GameEngine.theLoader.fileTwoS, GameEngine.theLoader.fileTwoS);
			fileThreeButton.setImages(GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH);
			
			playButton.setX(fileTwoX + 10);
			deleteButton.setX(fileTwoX + 10);
			
			selectedFile = 2;
			
		}
		
		private function selectFileThree():void {
			
			fileOneButton.setImages(GameEngine.theLoader.fileOneN, GameEngine.theLoader.fileOneH);
			fileTwoButton.setImages(GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH);
			fileThreeButton.setImages(GameEngine.theLoader.fileThreeS, GameEngine.theLoader.fileThreeS);
			
			playButton.setX(fileThreeX + 10);
			deleteButton.setX(fileThreeX + 10);
			
			selectedFile = 1;
			
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
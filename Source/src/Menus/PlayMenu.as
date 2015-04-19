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
	 *This class creates the play menu.
	 */
	
	public class PlayMenu extends World
	{
		
		private var fileOneX:int = FP.halfWidth - 350;//Sets up the x values that are used to place the save file images on the screen
		private var fileTwoX:int = FP.halfWidth - 110;
		private var fileThreeX:int = FP.halfWidth + 130;
		
		private var selectedFile:int = 1;//Used to set the selected file to the first by default
		
		private var fileOneButton:Button, fileTwoButton:Button, fileThreeButton:Button, playButton:Button, deleteButton:Button;//Declares the buttons
		
		/**
		 * This constructor that adds the playScreen, and all it's buttons
		 */
		public function PlayMenu() 
		{
			addGraphic(GameEngine.theLoader.playScreen, 0, 0, 0);//Adds the background image
			
			fileOneButton = new Button(selectFileOne, GameEngine.theLoader.fileOneS, GameEngine.theLoader.fileOneH, fileOneX, FP.halfHeight - 50, 115, 220);//Instantiates the save file buttons
			fileTwoButton =  new Button(selectFileTwo, GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH, fileTwoX, FP.halfHeight - 50, 115, 220);
			fileThreeButton = new Button(selectFileThree, GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH, fileThreeX, FP.halfHeight - 50, 115, 220);
			
			add(fileOneButton);//Adds the save file buttons to the world
			add(fileTwoButton);
			add(fileThreeButton);
			
			playButton = new Button(playSelected, GameEngine.theLoader.playButtonN, GameEngine.theLoader.playButtonH, fileOneX + 10, FP.halfHeight + 70, 50, 200);//Instantiates the play and delete buttons
			deleteButton = new Button(deleteSelected, GameEngine.theLoader.deleteButtonN, GameEngine.theLoader.deleteButtonH, fileOneX + 10, FP.halfHeight + 125, 50, 200);
			
			add(new Button(startTutorial, GameEngine.theLoader.tutorialButtonN, GameEngine.theLoader.tutorialButtonH, FP.halfWidth - 100, 170, 50, 200));//Adds the tutorial button
			
			add(playButton);//Adds the play and delete buttons to the world
			add(deleteButton);
			
			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));//Adds the back button to the lower left of the screen
			
		}
		
		/**
		 * This method sets up how the save files should appear if file One is selected
		 */
		private function selectFileOne():void {
			
			fileOneButton.setImages(GameEngine.theLoader.fileOneS, GameEngine.theLoader.fileOneS);//Set file one's neutral and hovered images to selected
			fileTwoButton.setImages(GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH);//Set file two's neutral and hovered images to their normal states
			fileThreeButton.setImages(GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH);//Set file three's neutral and hovered images to their normal states
			
			playButton.setX(fileOneX + 10);//Move the play and delete button along the x so that they are under the selected save file
			deleteButton.setX(fileOneX + 10);
			
			selectedFile = 1;//Set selectedFile to 1
			
		}
		
		/**
		 * This method sets up how the save files should appear if file Two is selected
		 */
		private function selectFileTwo():void {
			
			fileOneButton.setImages(GameEngine.theLoader.fileOneN, GameEngine.theLoader.fileOneH);//Set file one's neutral and hovered images to their normal states
			fileTwoButton.setImages(GameEngine.theLoader.fileTwoS, GameEngine.theLoader.fileTwoS);//Set file two's neutral and hovered images to selected
			fileThreeButton.setImages(GameEngine.theLoader.fileThreeN, GameEngine.theLoader.fileThreeH);//Set file three's neutral and hovered images to their normal states
			
			playButton.setX(fileTwoX + 10);//Move the play and delete button along the x so that they are under the selected save file
			deleteButton.setX(fileTwoX + 10);
			
			selectedFile = 2;//Set selectedFile to 2
			
		}
		
		/**
		 * This method sets up how the save files should appear if file Three is selected
		 */
		private function selectFileThree():void {
			
			fileOneButton.setImages(GameEngine.theLoader.fileOneN, GameEngine.theLoader.fileOneH);//Set file one's neutral and hovered images to their normal states
			fileTwoButton.setImages(GameEngine.theLoader.fileTwoN, GameEngine.theLoader.fileTwoH);//Set file two's neutral and hovered images to their normal states
			fileThreeButton.setImages(GameEngine.theLoader.fileThreeS, GameEngine.theLoader.fileThreeS);//Set file three's neutral and hovered images to selected
			
			playButton.setX(fileThreeX + 10);//Move the play and delete button along the x so that they are under the selected save file
			deleteButton.setX(fileThreeX + 10);
			
			selectedFile = 3;//Set selectedFile to 3
			
		}
		
		/**
		 * This method starts the tutorial
		 */
		private function startTutorial():void {
			
			FP.world = new FloorOne;
			
		}
		
		/**
		 * Not yet implemented
		 */
		private function playSelected():void {
			
		}
		
		/**
		 * Not yet implemented
		 */
		private function deleteSelected():void {
			
		}
		
		/**
		 * Will switch screens back to the main menu
		 */
		private function pageBack():void {
			
			FP.world = GameEngine.mainMenu;
			
		}
		
		
		
	}

}
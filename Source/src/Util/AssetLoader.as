package Util 
{
	import Menus.MainMenu;
	import Menus.ManagementMenu;
	import Menus.OptionsMenu;
	import Menus.PlayMenu;
	import net.flashpunk.graphics.Image;
	import Main.GameEngine;
	
	/**
	 * @author Joe
	 */
	public class AssetLoader 
	{
		
		public var PLAYER_IMG:Image;
		
		private var imagesDone:Boolean = false;
		private var soundsDone:Boolean = false;
		private var menusDone:Boolean = false;
		
		public function AssetLoader() 
		{
			trace("ASSETS");
		}
		
		public function load():void {
			
			loadImages();
			
			loadSounds();
			
			loadMenus();
			
		}
		
		private function loadImages():void {
			
			//////////////////////////////////////////////////////////////////
			
			[Embed(source = "../../assets/player.png")] var PLA:Class;
			
			PLAYER_IMG = new Image(PLA);
			
			//////////////////////////////////////////////////////////////////
			
			imagesDone = true;
			
		}
		
		private function loadSounds():void {
			
			//////////////////////////////////////////////////////////////////
			
		
			
			//////////////////////////////////////////////////////////////////
			
			soundsDone = true;
			
		}
		
		private function loadMenus():void {
			
			//////////////////////////////////////////////////////////////////
			
			GameEngine.mainMenu = new MainMenu;
			
			GameEngine.playMenu = new PlayMenu;
			
			GameEngine.optionsMenu = new OptionsMenu;
			
			GameEngine.managementMenu = new ManagementMenu;
			
			//////////////////////////////////////////////////////////////////
			
			menusDone = true;
			
		}
		
		public function progress():int {
			
			if (imagesDone && !soundsDone && !menusDone) {
				
				return 1;
				
			} else if (imagesDone && soundsDone && !menusDone) {
				
				return 2;
				
			} else if (imagesDone && soundsDone && menusDone){
				
				return 3;
				
			} else {
				
				return 0;
				
			}
				
		}
		
	}

}
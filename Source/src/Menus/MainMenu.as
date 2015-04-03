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
	 * @author Zach
	 */
	public class MainMenu extends World
	{
		[Embed(source = "../../assets/mainScreen.png")]
		private const MAIN_IMG:Class;
		
		private var img:Image = new Image(MAIN_IMG);
		
		public function MainMenu()
		{
			addGraphic(img, 0, 0, 0);
			add(new Button(playMenu, 305, 368, 10, 190));
			add(new Button(optionsMenu, 305, 418, 10, 190));
			add(new Button(managementMenu, 305, 478, 10, 190));
			
		}
		
		private function playMenu():void {
			FP.world = GameEngine.playMenu;
			
		}
		
		private function optionsMenu():void {
			FP.world = GameEngine.optionsMenu
			
		}
		
		private function managementMenu():void {
			FP.world = GameEngine.managementMenu;
			
		}
		
	}

}
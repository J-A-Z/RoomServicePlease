package Main
{
	import Menus.MainMenu;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import Util.AssetLoader;
	
	
	/**
	 * @author Joe
	 */
	public class GameEngine extends Engine {
		
		public static var theLoader:AssetLoader;
		
		public static var mainMenu:MainMenu;
		
		public function GameEngine() {
			
			super(800, 600, 60, false);
			
			theLoader = new AssetLoader;
			
			mainMenu = new MainMenu();
			
		}
		
		override public function init():void {
			
			trace("successful start. Init");
			
			FP.world = new IntroScreen();
			
		}
		
	}
	
}
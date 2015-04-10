package Main
{
	import flash.display.MovieClip;
	import flash.display.Scene;
	import flash.display.StageScaleMode;
	import Menus.AudioOptionsMenu;
	import Menus.GFXOptionMenu;
	import Menus.KeymapMenu;
	import Menus.MainMenu;
	import Menus.ManagementMenu;
	import Menus.OptionsMenu;
	import Menus.PlayMenu;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import Util.AssetLoader;
	
	
	/**
	 * @author Joe
	 */
	public class GameEngine extends Engine {
		
		public static var theLoader:AssetLoader;
		
		public static var mainMenu:MainMenu;
		
		public static var playMenu:PlayMenu;
		
		public static var optionsMenu:OptionsMenu;
		
		public static var managementMenu:ManagementMenu;
		
		public static var audioOptionsMenu:AudioOptionsMenu;
		
		public static var GFXOptionsMenu:GFXOptionMenu;
		
		public static var keymapMenu:KeymapMenu;
		
		public function GameEngine() {
			
			super(800, 600, 60, false);
			
			theLoader = new AssetLoader;
			
		}
		
		override public function init():void {
			
			trace("successful start. Init");
			
			FP.world = new IntroScreen();
			
		}
		
	}
	
}
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
	import Menus.PausedMenu;
	import Menus.PlayMenu;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import Util.AssetLoader;
	import net.flashpunk.utils.Draw;
	import flash.net.SharedObject;
	import Worlds.Floors.FloorOne;
	
	
	/**
	 * The GameEngine class is the main class for the entire game. All screens will be handled here and this is where the asset loader is initialized. Global
	 * variables like brightness and sound for the game will be kept here.
	 * 
	 * @author Joe
	 */
	public class GameEngine extends Engine {
		
		/**
		 * The instance of the GameEngine class for any other classes to use
		 */
		public static var instance:GameEngine;
		
		/**
		 * Where all of the games visual and audio assets are loaded and accessed from.
		 */
		public static var theLoader:AssetLoader;
		
		// All menus declared for the game. 
		public static var mainMenu:MainMenu;
		public static var playMenu:PlayMenu;
		public static var optionsMenu:OptionsMenu;
		public static var managementMenu:ManagementMenu;
		public static var audioOptionsMenu:AudioOptionsMenu;
		public static var GFXOptionsMenu:GFXOptionMenu;
		public static var keymapMenu:KeymapMenu;
		public static var pauseMenu:PausedMenu;
		
		/**
		 * The brightness level of the game.
		 */
		private var brightnessAlpha:Number = 0;
		
		/**
		 * The default constructor will set the resolution of the game, the framerate and it will initialize the assetloader.
		 */
		public function GameEngine() {
			
			super(800, 600, 60, false);
			
			instance = this;
			 var someFile:SharedObject = SharedObject.getLocal("Save_File_1");
			if (!(someFile.data.PlayerX is int)) {
				someFile.data.WorldFloor = "FloorOne";
				someFile.data.PlayerX = 0;
				someFile.data.PlayerY = 0;
				someFile.flush();
			}
			var someFile2:SharedObject = SharedObject.getLocal("Save_File_2");
			if (!(someFile2.data.PlayerX is int)) {
				someFile2.data.WorldFloor = "FloorOne";
				someFile2.data.PlayerX = 0;
				someFile2.data.PlayerY = 0;
				someFile2.flush();
			}
			var someFile3:SharedObject = SharedObject.getLocal("Save_File_3");
			if (!(someFile3.data.PlayerX is int)) {
				someFile3.data.WorldFloor = "FloorOne";
				someFile3.data.PlayerX = 0;
				someFile3.data.PlayerY = 0;
				someFile3.flush();
			}
			theLoader = new AssetLoader;
			
		}
		
		/**
		 * When the constructor is left, the class will be initialized and the world will be set to the intro screen.
		 */
		override public function init():void {
			
			trace("successful start. Init");
			
			FP.world = new IntroScreen();
			
		}
		
		/**
		 * The overridden render function will draw a black rectangle ontop of everything in the game. That rectangle will represent the games brightness.
		 */
		override public function render():void {
			
			super.render();
			
			Draw.rect(0, 0, 10000, 600, 0x000000, brightnessAlpha);
			
			
		}
		
		/**
		 * the setBrightness function will get a Number and set the alpha value of the brightness rectangle.  The GFXOptionsMenu will be using this function to
		 * update the brightness.
		 * @param	value
		 */
		public function setBrightness(value:Number):void {
			
			brightnessAlpha = value;
			
		}
		
	}
	
}
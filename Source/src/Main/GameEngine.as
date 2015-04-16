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
	import Menus.PauseMenu;
	import Menus.PlayMenu;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import Util.AssetLoader;
	import net.flashpunk.utils.Draw;
	
	
	/**
	 * @author Joe
	 */
	public class GameEngine extends Engine {
		
		public static var instance:GameEngine;
		
		public static var theLoader:AssetLoader;
		
		public static var mainMenu:MainMenu;
		
		public static var playMenu:PlayMenu;
		
		public static var optionsMenu:OptionsMenu;
		
		public static var managementMenu:ManagementMenu;
		
		public static var audioOptionsMenu:AudioOptionsMenu;
		
		public static var GFXOptionsMenu:GFXOptionMenu;
		
		public static var keymapMenu:KeymapMenu;
		
		public static var pauseMenu:PauseMenu;
		
		private var brightnessAlpha:Number = 0;
		
		public function GameEngine() {
			
			super(800, 600, 60, false);
			
			instance = this;
			
			theLoader = new AssetLoader;
			
		}
		
		override public function init():void {
			
			trace("successful start. Init");
			
			FP.world = new IntroScreen();
			
		}
		
		override public function render():void {
			
			super.render();
			
			Draw.rect(0, 0, 10000, 600, 0x000000, brightnessAlpha);
			
			
		}
		
		public function setBrightness(value:Number):void {
			
			brightnessAlpha = value;
			
		}
		
	}
	
}
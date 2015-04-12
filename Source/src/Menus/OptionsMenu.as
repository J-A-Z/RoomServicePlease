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
	 * @author Amanda
	 */
	public class OptionsMenu extends World
	{
		
		public function OptionsMenu() 
		{
			addGraphic(GameEngine.theLoader.optionsScreen, 0, 0, 0);
			add(new Button(gfxOptionMenu, GameEngine.theLoader.graphicsButtonN, GameEngine.theLoader.graphicsButtonH, 304, 300, 50, 250));//Changed placement of buttons.
			add(new Button(audioMenu, GameEngine.theLoader.soundButtonN, GameEngine.theLoader.soundButtonH, 304, 350, 50, 250));//They were at odd places.
			add(new Button(keymapMenu, GameEngine.theLoader.controlsButtonN, GameEngine.theLoader.controlsButtonH, 304, 400, 50, 250));//Also added the images in the constructor for the neutral & hover.
		}
		
		private function gfxOptionMenu(): void 
		{
			FP.world = GameEngine.GFXOptionsMenu;
		}
		
		private function audioMenu(): void
		{
			FP.world = GameEngine.audioOptionsMenu;
		}
		
		private function keymapMenu(): void
		{
			FP.world = GameEngine.keymapMenu;
		}
	}

}

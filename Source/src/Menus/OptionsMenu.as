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

			add(new Button(gfxOptionMenu, GameEngine.theLoader.graphicsButtonN, GameEngine.theLoader.graphicsButtonH, FP.halfWidth - 100, FP.halfHeight - 100, 50, 200));//Changed placement of buttons.
			add(new Button(audioMenu, GameEngine.theLoader.soundButtonN, GameEngine.theLoader.soundButtonH, FP.halfWidth - 100, FP.halfHeight, 50, 200));//They were at odd places.
			add(new Button(keymapMenu, GameEngine.theLoader.controlsButtonN, GameEngine.theLoader.controlsButtonH, FP.halfWidth - 100, FP.halfHeight + 100, 50, 200));//Also added the images in the constructor for the neutral & hover.

			add(new Button(pageBack, GameEngine.theLoader.backArrowN, GameEngine.theLoader.backArrowH, 50, 490, 60, 60));
			
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
		
		private function pageBack():void {
			
			FP.world = GameEngine.mainMenu;
			
		}
		
	}

}

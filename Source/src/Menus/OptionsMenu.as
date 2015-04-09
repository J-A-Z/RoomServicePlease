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
			add(new Button(gfxOptionMenu, 305, 300, 10, 190));
			add(new Button(audioMenu, 30, 450, 10, 190));
			add(new Button(keymapMenu, 30, 500, 10, 190));
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

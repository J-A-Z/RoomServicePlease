package Menus 
{
	import net.flashpunk.Engine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.utils.Draw;
	import Util.Button;
	
	/**
	 * @author Amanda
	 */
	public class OptionsMenu extends World
	{
		[Embed(source = "../../assets/optionsScreen.png")]
		private const OPT_IMG:Class;
		
		private var img:Image = new Image(OPT_IMG);
		
		public function OptionsMenu() 
		{
			addGraphic(img, 0, 0, 0);
			add(new Button(gfxOptionMenu, 305, 300, 10, 190));
			add(new Button(audioMenu, 30, 450, 10, 190));
			add(new Button(keymapMenu, 30, 500, 10, 190));
		}
		
		private function gfxOptionMenu(): void 
		{
			FP.world = new GFXOptionMenu();
		}
		
		private function audioMenu(): void
		{
			FP.world = new AudioOptionsMenu();
		}
		
		private function keymapMenu(): void
		{
			FP.world = new KeymapMenu();
		}
	}

}

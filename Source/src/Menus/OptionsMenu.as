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
		}
		
	}

}
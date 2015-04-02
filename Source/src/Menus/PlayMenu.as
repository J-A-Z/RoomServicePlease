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
	public class PlayMenu extends World
	{
		[Embed(source = "../../assets/playScreen.png")]
		private const PLAY_IMG:Class;
		
		private var img:Image = new Image(PLAY_IMG);
		
		public function PlayMenu() 
		{
			addGraphic(img, 0, 0, 0);
		}
		
	}

}
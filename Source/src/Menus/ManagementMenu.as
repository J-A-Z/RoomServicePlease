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
	public class ManagementMenu extends World
	{
		[Embed(source = "../../assets/managementScreen.png")]
		private const MNGMNT_IMG:Class;
		
		private var img:Image = new Image(MNGMNT_IMG);
		
		public function ManagementMenu() 
		{
			addGraphic(img, 0, 0, 0);
		}
		
	}

}
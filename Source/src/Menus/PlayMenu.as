package Menus 
{
	import net.flashpunk.Engine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import net.flashpunk.World;
	import net.flashpunk.utils.Draw;
	import Util.Button;
	import Main.GameEngine;
	import Util.InputHandler;
	import Util.PlayerHUD;
	
	/**
	 * @author Amanda
	 *
	 */
	
	public class PlayMenu extends World
	{
		public function PlayMenu() 
		{
			addGraphic(GameEngine.theLoader.playScreen, 0, 0, 0);
		}
		
	}

}
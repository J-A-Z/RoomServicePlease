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
	 *This class creates teh play menu.
	 */
	
	public class PlayMenu extends World
	{
		/**
		 * This constructor add the playScreen
		 */
		public function PlayMenu() 
		{
			addGraphic(GameEngine.theLoader.playScreen, 0, 0, 0);//Adds the play screen or the back ground of the play menu.
		}
		
	}

}
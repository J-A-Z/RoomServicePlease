package Worlds.Floors 
{
	import Entities.Enemies.Ghost;
	import net.flashpunk.World;
	import Util.PlayerHUD;
	import Worlds.Levels.FloorOneLevel;
	
	/**
	 * The FloorOne class will handle the first level of the game.
	 * @author Joe
	 */
	public class FloorOne extends World
	{
		
		/**
		 * The default constructor will add the level entity to the world.
		 */
		public function FloorOne() 
		{
			
			add (new FloorOneLevel);
			add (new Ghost(32 * 10, 32 * 4));
			add (new Ghost(32 * 50, 32 * 14));
			add (new Ghost(32 * 80, 32 * 3));
			add (new Ghost(32 * 140, 32 * 12));
			add (new Ghost(32 * 42, 32 * 15));
			add (new Ghost(32 * 24, 32 * 11));
			add (new Ghost(32 * 35, 32 * 8));
			add (new Ghost(32 * 67, 32 * 5));
			add (new Ghost(32 * 45, 32 * 18));
			add (new PlayerHUD);
			
		}
		public function returnClass():String {
			return "FloorOne";
		}
	}

}
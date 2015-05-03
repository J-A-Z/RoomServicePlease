package Worlds.Floors 
{
	import net.flashpunk.World;
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
			
		}
		public function returnClass():String {
			return "FloorOne";
		}
	}

}
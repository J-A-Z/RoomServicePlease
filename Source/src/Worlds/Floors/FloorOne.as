package Worlds.Floors 
{
	import net.flashpunk.World;
	import Worlds.Levels.FloorOneLevel;
	/**
	 * @author Joe
	 */
	public class FloorOne extends World
	{
		
		public function FloorOne() 
		{
			
			add (new FloorOneLevel);
			
		}
		
	}

}
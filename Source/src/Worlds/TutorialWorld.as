package Worlds 

{
	import net.flashpunk.World;
	/**
	 * @author Zach
	 */
	public class TutorialWorld extends World
	{
		
		public function TutorialWorld() 
		{
			
			add (new TutorialLevel);
			
		}
		public function returnClass():String {
			return "FloorOne";
		}
		
	}

}
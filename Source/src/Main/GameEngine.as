package Main
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	
	/**
	 * @author Joe
	 */
	public class GameEngine extends Engine {
		
		public function GameEngine() {
			
			super(800, 600, 60, false);
			
			//FP.world = new IntroScreen;
			
		}
		
		override public function init():void {
			
			trace("successful start. Init");
			
		}
		
	}
	
}
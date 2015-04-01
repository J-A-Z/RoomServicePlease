package Util 
{
	import net.flashpunk.graphics.Image;
	/**
	 * @author Joe
	 */
	public class AssetLoader 
	{
		
		public var PLAYER_IMG:Image;
		
		private var imagesDone:Boolean = false;
		private var soundsDone:Boolean = false;
		
		public function AssetLoader() 
		{
			trace("ASSETS");
		}
		
		public function load():void {
			
			loadImages();
			
			loadSounds();
			
		}
		
		private function loadImages():void {
			
			//////////////////////////////////////////////////////////////////
			
			[Embed(source = "../../assets/player.png")] var PLA:Class;
			
			PLAYER_IMG = new Image(PLA);
			
			//////////////////////////////////////////////////////////////////
			
			imagesDone = true;
			
		}
		
		private function loadSounds():void {
			
			//////////////////////////////////////////////////////////////////
			
		
			
			//////////////////////////////////////////////////////////////////
			
			soundsDone = true;
			
		}
		
		public function progress():int {
			
			if (imagesDone && !soundsDone) {
				
				return 1;
				
			} else if (imagesDone && soundsDone) {
				
				return 2;
				
			} else {
				
				return 0;
				
			}
				
		}
		
	}

}
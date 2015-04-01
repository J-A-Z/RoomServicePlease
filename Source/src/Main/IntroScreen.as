package Main 
{
	import net.flashpunk.Engine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import Util.AssetLoader;
	import Main.GameEngine;
	import net.flashpunk.utils.Draw;
	/**
	 * @author Joe
	 */
	public class IntroScreen extends World
	{
		
		[Embed(source = "../../assets/introScreen.png")] private const INTRO_IMG:Class;
		private var img:Image = new Image(INTRO_IMG);
		
		private var assetLoader:AssetLoader = GameEngine.theLoader;
		
		private var ready:Boolean = false;
		
		private var timer:int = 0;
		private var barProgress:int = 0;
		
		public function IntroScreen() 
		{
			
			addGraphic( img, 0, 0, 0);
			
			assetLoader.load();
			
		}
		
		override public function render():void {
			
			super.render();
			
			var progress:int = assetLoader.progress();
				
			if (barProgress < 125) {
				
				barProgress += 1;
				
			}
			
			if (progress > 1 && barProgress >= 125) {
				
				if (barProgress < 250) {
					
					barProgress += 1;
					
				}
				
			}
			
			Draw.rect(0, FP.height - 10, barProgress * 3.2, 10, 0xFF0000);
			
			trace(barProgress);
			
			if (barProgress == 250) {
				
				ready = true;
				
			}
			
		}
		
		override public function update():void {
			
			super.update();
			
			if (ready) {
				
				timer++;
				
				if (timer >= 60 * 3) {
					
					FP.world = GameEngine.mainMenu;
					
				}
				
			}
			
		}
		
	}

}
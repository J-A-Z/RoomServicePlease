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
		
		private var assetLoader:AssetLoader = GameEngine.theLoader;
		
		private var ready:Boolean = false;
		
		private var timer:int = 0;
		private var barProgress:int = 0;
		
		[Embed(source="../../assets/screens/introScreen.png")] private var screenImg:Class;
		private var introScreenImg:Image = new Image(screenImg);
		
		public function IntroScreen() 
		{
			
			addGraphic( introScreenImg, 0, 0, 0);
			
			assetLoader.load();
			
		}
		
		override public function render():void {
			
			super.render();
			
			var progress:int = assetLoader.progress();
				
			if (barProgress < 125) {
				
				barProgress += 10;
				
			}
			
			if (progress > 1 && barProgress >= 125) {
				
				if (barProgress < 250) {
					
					barProgress += 10;
					
				}
				
			}
			
			if (barProgress == 250 && progress == 3) {
				
				ready = true;
				
			}
			
			Draw.rect(0, FP.height - 10, barProgress * 3.2, 10, 0xFF0000);
			
			Draw.rect((250 - barProgress) * 3.2, 0, barProgress * 3.2, 10, 0xFF0000);
			
			Draw.rect(0, 0, 10, barProgress * 2.4, 0xFF0000);
			
			Draw.rect(FP.width - 10, (250 - barProgress) * 2.4, 10, barProgress * 2.4, 0xFF0000);
			
			
			
		}
		
		override public function update():void {
			
			super.update();
			
			if (ready) {
				
				timer++;
				
				if (timer >= 60 * 1.5) {
					
					FP.world = GameEngine.mainMenu;
					
				}
				
			}
			
		}
		
	}

}
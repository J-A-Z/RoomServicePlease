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
		
		[Embed(source="../../assets/screens/introScreen.png")] var img:Class;
		private var introScreenImg:Image = new Image(img);
		
		public function IntroScreen() 
		{
			
			addGraphic( introScreenImg, 0, 0, 0);
			
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
			
			if (barProgress == 250 && progress == 3) {
				
				ready = true;
				
			}
			
			Draw.rect(0, FP.height - 10, barProgress * 3.2, 10, 0xFF0000);
			
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
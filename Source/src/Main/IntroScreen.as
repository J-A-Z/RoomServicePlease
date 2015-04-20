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
	 * The IntroScreen class extends the World class from flashpunk and will make sure the assets are loaded. While the assets are loaded, the user will
	 * be displayed this screen.
	 * @author Joe
	 */
	public class IntroScreen extends World
	{
		
		// The asset loader from the GameEngine class
		private var assetLoader:AssetLoader = GameEngine.theLoader;
		
		// Whether or not the main menu is ready to be displayed.
		private var ready:Boolean = false;
		
		// To keep track of the progress of the assetLoader
		private var timer:int = 0;
		private var barProgress:int = 0;
		
		// The image to be displayed in the background of this screen
		[Embed(source="../../assets/screens/introScreen.png")] private var screenImg:Class;
		private var introScreenImg:Image = new Image(screenImg);
		
		/**
		 * The default constructor will display the above image and tell the assetLoader to load.
		 */
		public function IntroScreen() 
		{
			
			addGraphic( introScreenImg, 0, 0, 0);
			
			assetLoader.load();
			
		}
		
		/**
		 * The overriden render function will update the graphics in the window when the intro screen is being displayed.
		 */
		override public function render():void {
			
			super.render();
			
			// The progress of the asset loader
			var progress:int = assetLoader.progress();
				
			
			// If the bars progress hasnt reached 50% completion, progress it by 5.
			if (barProgress < 125) {
				
				barProgress += 5;
				
			}
			
			// If the asset loader has moved on past the first step and the bar is 50% or higher, progress the bar.
			if (progress > 1 && barProgress >= 125) {
				
				if (barProgress < 250) {
					
					barProgress += 5;
					
				}
				
			}
			
			// If the progress bar is 100% and the asset loader is done, set ready to true. 
			if (barProgress == 250 && progress == 3) {
				
				ready = true;
				
			}
			
			// The bar percent is calculated.
			var barPercent:Number = barProgress / 250;
			
			// Draw a black rectangle to reveal the "Loading..." text on the screen.
			Draw.rect(FP.halfWidth - 160 + (barPercent * 320), 340, 320 - (barPercent * 320) , 100, 0x000000);
			
		}
		
		/**
		 * The overriden update funtion will be called at every game tick. This will check to see if the menu is ready to be displayed and it will load the menu
		 * after a certain time.
		 */
		override public function update():void {
			
			super.update();
			
			// If ready, change the current world to the main menu after 1.5 seconds.
			if (ready) {
				
				timer++;
				
				if (timer >= 60 * 1.5) {
					
					FP.world = GameEngine.mainMenu;
					
				}
				
			}
			
		}
		
	}

}
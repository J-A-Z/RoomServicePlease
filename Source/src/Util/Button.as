package Util
{
	import flash.geom.Rectangle;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Draw;
	
	/**
	 * @author Zach
	 */
	public class Button extends Entity
	{
		private var whenButtonClicked:Function;
		private var imageNeu:Image, imageHov:Image;
		private var smallRec:Rectangle;
		
		//private var hitbox:Rectangle;
		public function Button(clickHandler:Function, imgN:Image, imgH:Image, someX:int, someY:int, someHeight:int, someWidth:int) //Takes in two images the spot you want to place the images and their height/width.
		{
			whenButtonClicked = clickHandler;
			imageNeu = imgN;
			imageHov = imgH;
			this.x = someX;
			this.y = someY;
			this.height = someHeight;
			this.width = someWidth;
			smallRec = new Rectangle(someX + 10, someY + 5, someWidth - 20, someHeight - 10);
		}
		
		override public function update():void
		{
			
			
			
			if (smallRec.contains(Input.mouseX, Input.mouseY))
			{
				
				graphic = imageHov;
				
				//addGraphic(imageHov);
			}
			else
			{
				
				graphic = imageNeu;
				
			}
			if (Input.mousePressed)
			{
				
				if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					whenButtonClicked();
				}
				
			}
		}
		
		public function setX(valX:int):void {
			this.x = valX;
			smallRec.x = valX + 10;
		}
		
		public function setImages(someNeutralImage:Image, someHoveredImage:Image):void {
			this.imageNeu = someNeutralImage;
			this.imageHov = someHoveredImage;
		}
	}

}
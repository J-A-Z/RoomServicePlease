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
		private var hitbox:Rectangle;
		
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
			hitbox = new Rectangle(someX - 4, someY - 18, 192, 30);
		}
		
		override public function update():void
		{
			if (collideRect(Input.mouseX, Input.mouseY, hitbox.x, hitbox.y, hitbox.width, hitbox.height))
			{
				addGraphic(imageHov);
			}
			else
			{
				addGraphic(imageNeu);
			}
			if (Input.mousePressed)
			{
				
				if (collidePoint(x, y, Input.mouseX, Input.mouseY))
				{
					whenButtonClicked();
				}
				
			}
		}
	}

}
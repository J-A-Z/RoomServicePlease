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
			
			//collideRect(Input.mouseX, Input.mouseY, smallRec.x, smallRec.y, smallRec.width, smallRec.height)
			
			if (smallRec.contains(Input.mouseX, Input.mouseY))
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
			
			Draw.rect(smallRec.x, smallRec.y, smallRec.width, smallRec.height, 0xFFFFFF, 1, false);
			
		}
	}

}
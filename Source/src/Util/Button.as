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
		private var whenButtonClicked:Function;//Declares the function variable whenButtonClicked
		
		private var imageNeu:Image, imageHov:Image;//Declares the neutral and hovered image variables imageNeu and imageHov
		
		private var smallRec:Rectangle;//Declares the rectangle variable smallRec
		
		/**
		 * The Button constructor takes in a function, 2 images, coordinates, and dimensions that are used to set up variables
		 * @param	clickHandler
		 * @param	imgN
		 * @param	imgH
		 * @param	someX
		 * @param	someY
		 * @param	someHeight
		 * @param	someWidth
		 */
		public function Button(clickHandler:Function, imgN:Image, imgH:Image, someX:int, someY:int, someHeight:int, someWidth:int) //Takes in two images the spot you want to place the images and their height/width.
		{
			whenButtonClicked = clickHandler;//Sets the function whenButtonClicked to the function passed through as a parameter
			imageNeu = imgN;//Sets imageNeu to the neutral image passed down
			imageHov = imgH;//Sets imageHov to the hovered image passed down
			this.x = someX;//Sets the X position of the Button to someX
			this.y = someY;//Sets the Y position of the Button to someY
			this.height = someHeight;//Sets the height of the Button to someHeight
			this.width = someWidth;//Sets the width of the Button to someWidth
			smallRec = new Rectangle(someX + 10, someY + 5, someWidth - 20, someHeight - 10);//Sets up smallRec with the given coordinates and dimensions
		}
		
		/**
		 * Overridden update method that checks if the mouse is over the button's hitbox (smallRec)
		 * And if it is then it will display the hovered image of the button
		 */
		override public function update():void
		{
			
			
			
			if (smallRec.contains(Input.mouseX, Input.mouseY))//If mouse is over the button, display the hovered image
			{
				
				graphic = imageHov;
				
				
			}
			else
			{
				
				graphic = imageNeu;//Else display the neutral image
				
			}
			if (Input.mousePressed)//If mouse button is pressed check the hitbox
			{
				
				if (collidePoint(x, y, Input.mouseX, Input.mouseY))//If mouse is in hitbox
				{
					whenButtonClicked();//Perform this function
				}
				
			}
		}
		
		/**
		 * This method sets the value of the x position of the button
		 * @param	valX
		 */
		public function setX(valX:int):void {
			this.x = valX;//Set x to the given integer
			smallRec.x = valX + 10;//Set the hitbox to the given integer plus 10
		}
		
		/**
		 * When callled allows the changing of the neutral and hovered images
		 * @param	someNeutralImage
		 * @param	someHoveredImage
		 */
		public function setImages(someNeutralImage:Image, someHoveredImage:Image):void {
			this.imageNeu = someNeutralImage;//Changes the neutral image
			this.imageHov = someHoveredImage;//Changes the hovered image
		}
	}

}
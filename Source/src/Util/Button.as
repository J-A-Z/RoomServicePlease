package Util 
{
	import net.flashpunk.Entity;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	/**
	 * @author Zach
	 */
	public class Button extends Entity
	{
		private var whenButtonClicked:Function;
		
		public function Button(clickHandler:Function, someX:int, someY:int, someHeight:int, someWidth:int) 
		{
			whenButtonClicked = clickHandler;
			this.x = someX;
			this.y = someY;
			this.height = someHeight;
			this.width = someWidth;
		}
		
		override public function update():void {
			
			if (Input.mousePressed) {
				
				if (collidePoint(x, y, Input.mouseX, Input.mouseY)) {
					whenButtonClicked();
				}
				
			}
		}
	}

}
package Util
{
	
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.utils.Draw;
	
	/**
	 * @author Zach
	 * Not yet implemented
	 */
	public class InputHandler
	{
		/**
		 * Variables used to alter entities speed and movement.
		 */
		private var power:Number = 0.5;
		private var jumpPower:Number = 12;
		private var hFriction:Number = 0.90;
		private var vFriction:Number = 0.99;
		private var xSpeed:Number = 0;
		private var ySpeed:Number = 0;
		private var gravity:Number = 0.9;
		
		/**
		 * Entity variable
		 */
		private var someEnt:Entity;
		
		/**
		 * Constructor that will assign an entity to someEnt.
		 */
		public function InputHandler(someEntity:Entity)
		{
			someEnt = someEntity;
		}
		
		/**
		 * The move function will be called every update tick from the entity and will change the entities location on the screen depending on the user inputs. This function will make sure the entity 
		 * will fall due to gravity and move at the right pace.
		 * 
		 */
		public function move():void
		{
			// Input checks. 
			var pressed:Boolean = false;
			
			if (Input.check(Key.A))
			{
				xSpeed -= power;
				pressed = true;
			}
			if (Input.check(Key.D))
			{
				xSpeed += power;
				pressed = true;
			}
			if (someEnt.collide("level", someEnt.x, someEnt.y + 1))
			{
				ySpeed = 0;
				if (Input.check(Key.SPACE))
				{
					ySpeed -= jumpPower;
				}
			}
			else
			{
				ySpeed += gravity;
			}
			if (Math.abs(xSpeed) < 1 && !pressed)
			{
				xSpeed = 0;
			}
			xSpeed *= hFriction;
			ySpeed *= vFriction;
			
			someEnt.moveBy(xSpeed, ySpeed, "level");
		}
	
	}
}
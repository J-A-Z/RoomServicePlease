package Util 
{
	import net.flashpunk.Entity;
	import flash.geom.Rectangle;
	import net.flashpunk.utils.Draw;
	/**
	 * @author Zach
	 * Not used yet but will be used to display player's information such as health
	 */
	public class PlayerHUD extends Entity
	{
		private var health:int;//Used to keep track of player's health
		private var healthBar:Rectangle;//Used to draw player's healthbar
		
		/**
		 * Constructor that setups up needed variables
		 */
		public function PlayerHUD() 
		{
			this.x = 50;//X position on the screen
			this.y = 50;//Y position on the screen
			this.width = health;//Sets length to the amount of health the player has
			this.height = 10;// and sets it to be 10 thick.
			
			
		}
		
		/**
		 * This method will be used to add or subtract health
		 * @param	subHealth
		 */
		public function changeHealth(subHealth:int):void {
			
			health += subHealth;// adds health
			
		}
		
		/**
		 * Draws the health bar at a given location sets it's width height and color
		 */
		override public function render():void
		{
			Draw.rect(this.x, this.y, this.width*1.0, this.height, 0xFF0000);//Red healthbar
		}
		
	}

}
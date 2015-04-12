package Util 
{
	import net.flashpunk.Entity;
	import flash.geom.Rectangle;
	import net.flashpunk.utils.Draw;
	/**
	 * @author Zach
	 */
	public class PlayerHUD extends Entity
	{
		private var health:int;
		private var healthBar:Rectangle;
		public function PlayerHUD() 
		{
			this.x = 50;
			this.y = 50;
			this.width = health;
			this.height = 10;
			
			
		}
		
		public function changeHealth(subHealth:int):void {
			
			health += subHealth;
			
		}
		
		override public function render():void
		{
			Draw.rect(30, 100, health*1.0, 10, 0xFF0000);
		}
		
	}

}
package Entities.Enemies 


{
	
	import flash.geom.Rectangle;
	import Main.GameEngine;
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import Worlds.Floors.FloorOne;
	
	/**
	 * ...
	 * @author Joe M
	 */
	public class Ghost extends Entity
	{
		
		private var health:Number = 10;
		private var curHealth:Number = health;
		
		public function Ghost(xCord:int, yCord:int) 
		{
			graphic = GameEngine.theLoader.ghostSprite;
			
			name = "enemy";
			
			setHitbox(32, 32);
			
			layer = -2;
			
			this.x = xCord;
			this.y = yCord;
		}
		
		override public function update():void {
			
			var player:Entity = world.getInstance("player") as Entity;
			
			var cam:Rectangle = new Rectangle(FP.camera.x, FP.camera.y, 800, 600);
			
			if (cam.contains(this.x, this.y)){
			
				if (this.x < player.x) {
				
					this.x += 1.2;
				
				}
			
				if (this.x > player.x) {
				
					this.x -= 1.2;
				
				}
			
				if (this.y > player.y) {
				
					this.y -= 1.2;
				
				}
			
				if (this.y < player.y) {
				
					this.y += 1.2;
				
				}
				
			}
			
		}
		
	}

}
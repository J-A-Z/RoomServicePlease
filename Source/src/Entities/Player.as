package Entities 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Draw;
	
	/**
	 * ...
	 * @author Joe 
	 */
	public class Player extends Entity {
		
		[Embed(source="../../assets/playerPlaceholder.png")] private const PLAYER_IMG:Class;
		
		private var power:Number = 0.5;
		private var jumpPower:Number = 12;
		private var hFriction:Number = 0.90;
		private var vFriction:Number = 0.99;
		private var xSpeed:Number = 0;
		private var ySpeed:Number = 0;
		private var gravity:Number = 0.9;
		
		private var health:Number = 10;
		private var curHealth:Number = health;
		private var regen:Number = 5 * 60; // 1 Health per 5 secs
		private var regenCounter:Number = 0;
		
		private var hitStun:Number = 1 * 60; // Cant be hit for 1 sec
		private var stunCounter:Number = 0;
		private var hit:Boolean = false;
		
		public function Player() {
			
			graphic = new Image(PLAYER_IMG);
			
			name = "player";
			
			setHitbox(32, 32);
			
			layer = -2;
			
		}
		
		public function getHealth():Number {
			return curHealth;
		}
		
		public function move():void {
			
			var pressed:Boolean = false;
			
			if (Input.check(Key.A)) {
				xSpeed-=power;
				pressed=true;
			}
			if (Input.check(Key.D)) {
				xSpeed+=power;
				pressed=true;
			}
			if (collide("level",x,y+1)) {
				ySpeed=0;
				if (Input.check(Key.SPACE)) {
					ySpeed-=jumpPower;
				}
			} else {
				ySpeed+=gravity;
			}
			if (Math.abs(xSpeed)<1&&! pressed) {
				xSpeed=0;
			}
			xSpeed*=hFriction;
			ySpeed *= vFriction;
			
			moveBy(xSpeed, ySpeed, "level");
		}
		
		public function updateHealth():void {
			if (curHealth < health && !hit) {
				regenCounter += 1;
				
				if (regenCounter == regen) {
					curHealth += 1;
					regenCounter = 0;
				}
			}
		}
		
		override public function update():void {
				
			move();
			
			updateHealth();
			
			var level:Entity = world.getInstance("level") as Entity;
			
			if (x > FP.halfWidth && x < level.right - FP.halfWidth) {
				
				FP.camera.x = x - FP.halfWidth;
			}
			
		}
		
	}

}
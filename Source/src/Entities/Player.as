package Entities 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Draw;
	import Main.GameEngine;
	import Util.InputHandler;
	
	/**
	 * The Player class defines the entity that the user will control when playing the game. The player will move according to the inputs received from the InputHandler class.
	 * The Player has a graphic to represent it on the screen and will collide with the level being played on. The player will be able to attack enemies and hurt them. 
	 * 
	 * @author Joe 
	 */
	public class Player extends Entity {
		
		
		/**
		 * Variables used to alter players speed and movement.
		 */
		private var power:Number = 0.5;
		private var jumpPower:Number = 12;
		private var hFriction:Number = 0.90;
		private var vFriction:Number = 0.99;
		private var xSpeed:Number = 0;
		private var ySpeed:Number = 0;
		private var gravity:Number = 0.9;
		
		
		/**
		 * Variables that manage the players health and regeneration.
		 */
		private var health:Number = 10;
		private var curHealth:Number = health;
		private var regen:Number = 5 * 60; // 1 Health per 5 secs
		private var regenCounter:Number = 0;
		
		/**
		 * Variables that manage the hitstun of the player (the invincibilty period after getting hit once).
		 */
		private var hitStun:Number = 1 * 60; // Cant be hit for 1 sec
		private var stunCounter:Number = 0;
		private var hit:Boolean = false;
		
		var inputs:InputHandler;
		
		 /** The default constructor gets no parameters and assigns the graphic for the player, gives it a name and a hitbox and sets its display layer to be closer to the top.
		 */
		public function Player() {
			
			graphic = GameEngine.theLoader.playerSprite;
			
			name = "player";
			
			setHitbox(32, 32);
			
			layer = -2;
			inputs = new InputHandler(this);
			
		}
		
		/**
		 * The getHealth function will return the Number that is the players current health.
		 * 
		 * @return curHealth:Number
		 */
		public function getHealth():Number {
			return curHealth;
		}
		
		
		
		/**
		 * The updateHealth function will be called every tick that the player updates. This will calculate the players health and regen the health if needed. 
		 */
		public function updateHealth():void {
			
			if (curHealth < health && !hit) {
				regenCounter += 1;
				
				if (regenCounter == regen) {
					curHealth += 1;
					regenCounter = 0;
				}
			}
		}
		
		/**
		 * The update function is overridden from the parent entity class. For every game tick, the players location and speed will be calculated with move(), the health
		 * will be calculated with updateHealth() and the players collisions are checked.
		 */
		override public function update():void {
				
			inputs.move();
			
			updateHealth();
			
			// Scroll the camera to follow the player on the X axis.
			
			var level:Entity = world.getInstance("level") as Entity;
			
			if (x > FP.halfWidth && x < level.right - FP.halfWidth) {
				
				FP.camera.x = x - FP.halfWidth;
			}
			
			var enemy:Entity = collide("enemy", x, y) as Entity;
			
			if (enemy) {
				
				if (curHealth > 0 && !hit){
					curHealth -= 1;
					hit = true;
				}
			}
			
			// If the user presses P, open up the pause menu.
			
			if (Input.check(Key.P)) {
				
				GameEngine.pauseMenu.setWorld(FP.world);
				
				FP.world = GameEngine.pauseMenu;
				
			}
			
		}
		
	}

}
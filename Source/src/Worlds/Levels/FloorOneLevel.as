package Worlds.Levels 
{
	import net.flashpunk.Entity;
	import Main.GameEngine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	import net.flashpunk.FP;
	import net.flashpunk.utils.LevelEditor;
	import Entities.Player;
	
	/**
	 * The FloorOneLevel defines the level for the first world. This class will make use of the LevelEditor class in Flashpunk to convert bitmaps and tile graphics
	 * into a working level that the entities can interact with.
	 * @author Joe
	 */
	public class FloorOneLevel extends Entity
	{
		
		// The images that will be used with the LevelEditor.
		private var tileSet:Class = GameEngine.theLoader.tileSetOne;
		private var tileChart:Class = GameEngine.theLoader.tileChartOne;
		private var levelMap:Class = GameEngine.theLoader.levelMapOne;
		private var colliderChart:Class = GameEngine.theLoader.colliderChartOne;
		private var entityChart:Class = GameEngine.theLoader.entityChartOne;
		private var entityMap:Class = GameEngine.theLoader.entityMapOne;
		
		/**
		 * The default constructor will give the level a type to be used when collisions are being tested.
		 */
		public function FloorOneLevel() 
		{
			name = "level";
		}
		
		/**
		 * The overriden added function will be called when this entity is added to a world. This function will convert tilemaps into a level to be played on with graphics. 
		 */
		override public function added():void {
			
			// Define the tileset (which are the graphics). This set is 32x32 resolution
			LevelEditor.DefineTileset( "levelOne", tileSet, tileChart, 32, 32);
			
			// The tilemap is created.
			var newTM:Tilemap = LevelEditor.CreateTilemap( "levelOne", levelMap);
			
			// The grid that deteremines which tiles will collide or not.
			var newG:Grid = LevelEditor.CreateGrid( "levelOne", levelMap, colliderChart);
			
			// The entites are placed on the level
			LevelEditor.PlaceEntities( "levelOne", [Player], entityChart, entityMap);
			
			// Assign the graphic, mask and type.
			graphic = newTM;
			mask = newG;
			type = "level";
			
			layer = 0;
			
		}
		
	}

}
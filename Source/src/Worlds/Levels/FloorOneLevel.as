package Worlds.Levels 
{
	import net.flashpunk.Entity;
	import Main.GameEngine;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Tilemap;
	import net.flashpunk.masks.Grid;
	import net.flashpunk.FP;
	import Util.LevelEditor;
	import Entities.Player;
	
	/**
	 * ...
	 * @author Joe
	 */
	public class FloorOneLevel extends Entity
	{
		
		private var tileSet:Class = GameEngine.theLoader.tileSetOne;
		private var tileChart:Class = GameEngine.theLoader.tileChartOne;
		private var levelMap:Class = GameEngine.theLoader.levelMapOne;
		private var colliderChart:Class = GameEngine.theLoader.colliderChartOne;
		private var entityChart:Class = GameEngine.theLoader.entityChartOne;
		private var entityMap:Class = GameEngine.theLoader.entityMapOne;
		
		public function FloorOneLevel() 
		{
			name = "level";
		}
		
		override public function added():void {
			
			LevelEditor.DefineTileset( "levelOne", tileSet, tileChart, 32, 32);
			
			var newTM:Tilemap = LevelEditor.CreateTilemap( "levelOne", levelMap);
			
			var newG:Grid = LevelEditor.CreateGrid( "levelOne", levelMap, colliderChart);
			
			LevelEditor.PlaceEntities( "levelOne", [Player], entityChart, entityMap);
			
			graphic = newTM;
			mask = newG;
			type = "level";
			
			layer = 0;
			
		}
		
	}

}
package Util 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.geom.Point;
	
	import net.flashpunk.masks.Grid;
	import net.flashpunk.World;
	import net.flashpunk.FP;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.graphics.Tilemap
	
	public class LevelEditor
	{		
		public static var tileSets:Array = new Array();
		
		private static var _mapData:BitmapData;
		private static var _mapArray:Array;
		private static var _tileIndex:int;
		private static var _tileWidth:uint;
		private static var _tileHeight:uint;
		
		private static var _width:uint;
		private static var _height:uint;
		
		private static var _image:Bitmap;					// Bitmap that give the canvas images to show (like a film strip)
		private static var _imageData:BitmapData;			// Data for above bitmap
		
		private static var _tilemap:Tilemap;
		private static var _grid:Grid;
		
		private static var r:uint = 0;
		private static var c:uint = 0;
		
		
		/** Used to define a tileset by name, if the name already exists it will be redefined/overwritten with new data
		 * 
		 * @param	name 			Name of this tileset
		 * @param	imageSource		Source image for tiles to be placed
		 * @param	tileChart		Reference image or array to be used
		 * @param  	tileWidth		Width of tiles in this set
		 * @param 	tileHeight 		Height of tiles in this set
		 */
		public static function DefineTileset( name:String, imageSource:*, tileChart:*, tileWidth:uint, tileHeight:uint ) : void
		{
			var molds:Array =  new Array();
			
			if ( tileChart is Array )
			{
				molds = tileChart;
			} else {
				var mold:BitmapData = (new tileChart() as Bitmap).bitmapData;
				
				for ( r = 0; r < mold.height; r++ )
				{
					for ( c = 0; c < mold.width; c++ )
					{
						molds.push( mold.getPixel(c, r) );
					}
				}
			}
			
			if ( tileSets.indexOf(name) == -1 )
			{
				tileSets.push( name );
				tileSets.push( imageSource );
				tileSets.push( molds );
				tileSets.push( new Point( tileWidth, tileHeight ) );
			} else {
				var replace:uint = tileSets.indexOf(name);
				tileSets[replace] = name;
				tileSets[replace + 1] = imageSource;
				tileSets[replace + 2] = molds;
				tileSets[replace + 3] = new Point( tileWidth, tileHeight );
			}
			
		}
		
		/** Use to create a tilemap
		 * 
		 * @param	tileSet 		Name of the tileset to use, use LevelEditor.DefineTileset to set one up if you haven't
		 * @param	mapSource		Source of the map image file
		 * @param	tilewidth		Width of a tile
		 * @param	tileheight		Height of a tile
		 * @param	initialX		X position
		 * @param	initialY		Y position
		 * @return
		 */
		public static function CreateTilemap( tileSet:String, mapSource:*, initialX:uint = 0, initialY:uint = 0 ) : Tilemap
		{			
			_tileIndex = tileSets.indexOf(tileSet);
			if ( _tileIndex < 0 ) {
				throw new Error( "Tileset: " + String( tileSet ) + " cannot be found." );
				return _tilemap;
			}
			_image = new tileSets[_tileIndex + 1] as Bitmap;
			_imageData = _image.bitmapData;
			
			_tileWidth = tileSets[ _tileIndex + 3 ].x;
			_tileHeight = tileSets[ _tileIndex + 3 ].y;
			
			_mapData = (new mapSource() as Bitmap).bitmapData;
				_width = _mapData.width * _tileWidth;
				_height = _mapData.height * _tileHeight;
			
			_mapArray = new Array( _mapData.width );
			
			for ( c = 0; c < _mapData.width; c++ )
			{
				_mapArray[ c ] = new Array( _mapData.height );
				
				for ( r = 0; r < _mapData.height; r++ )
				{
					_mapArray[ c ][ r ] = _mapData.getPixel( c, r );
				}
			}
			
			_tilemap = new Tilemap( _imageData, _width, _height, _tileWidth, _tileHeight ) as Tilemap;
			_tilemap.x = initialX;
			_tilemap.y = initialY;
			
			Setup();
			
			return _tilemap;
		}
		
		private static function Setup() : void
		{
			var relationIndex:int = 0;
			
			for ( c = 0; c < _mapData.width; c++ )
			{
				for ( r = 0; r < _mapData.height; r++ )
				{					
					relationIndex = tileSets[_tileIndex + 2].indexOf( _mapData.getPixel(c, r) );
					
					if ( relationIndex >= 0 )
					{
						_tilemap.setTile( c, r, relationIndex );
					}
				}
			}
			
		}
		/**	Use to create Grid
		 * 
		 * @param	tileSet 	Name of the tileset to use, use LevelEditor.DefineTileset to set one up if you haven't
		 * @param	mapSource	Source of the map image file
		 * @param	colliderChart	Reference image or array of colliders
		 * @param	initialX	Initial X position
		 * @param	initialY	Initial Y position
		 * @return	
		 */
		public static function CreateGrid( tileSet:String, mapSource:*, colliderChart:*, initialX:int = 0, initialY:int = 0 ) : Grid
		{
			_tileIndex = tileSets.indexOf(tileSet);
			if ( _tileIndex < 0 ) {
				throw new Error( "Tileset: " + String( tileSet ) + " cannot be found." );
				return _grid;
			}
			var collision:Array = new Array;
			var collidersData:BitmapData;
			var mapData:BitmapData = ( new mapSource() as Bitmap ).bitmapData;
			
			_tileWidth = tileSets[ _tileIndex + 3 ].x;
			_tileHeight = tileSets[ _tileIndex + 3 ].y;
			
			_grid = new Grid( _width, _height, _tileWidth, _tileHeight, initialX, initialY );
			
			if ( colliderChart is Array )
			{
				collision = colliderChart;
			} 
			else if ( colliderChart is Class )
			{
				collidersData = ( new colliderChart() as Bitmap ).bitmapData;
				for ( r = 0; r < collidersData.height; r++ )
				{
					for ( c = 0; c < collidersData.width; c++ )
					{
						collision.push( collidersData.getPixel( c, r ) );
					}
				}
			}
			
			for ( r = 0; r < mapData.height; r++ )
			{
				for ( c = 0; c < mapData.width; c++ )
				{
					if ( collision.indexOf( mapData.getPixel( c, r ) ) >= 0 )
					{
						_grid.setTile( c, r );
					}
				}
			}
			
			return _grid;
		}
		/** Use to place entities
		 * 
		 * @param	tileSet 			Name of the tileset to use, use LevelEditor.DefineTileset to set one up if you haven't
		 * @param	entities			List of entities to place
		 * @param	entityChart			Reference image or Array of values to represent corresponding entity at same index
		 * @param	mapSource			Source of map image file
		 * @param	world				The world to add these entites to, defaults to FP.world if left null
		 */
		public static function PlaceEntities( tileSet:String, entities:Array, entityChart:*, mapSource:*, world:World = null ) : void
		{
			var placeData:BitmapData = ( new mapSource() as Bitmap ).bitmapData;
			var rep:Array = new Array();
			var repData:BitmapData;
			var index:int = 0;
			var newbie:Entity;
			
			_tileWidth = tileSets[ _tileIndex + 3 ].x;
			_tileHeight = tileSets[ _tileIndex + 3 ].y;
			world = ( world == null ) ? FP.world : world;
			
			if ( entityChart is Array )
			{
				rep = entityChart;
			} 
			else if ( entityChart is Class )
			{
				repData = ( new entityChart() as Bitmap ).bitmapData;
				for ( r = 0; r < repData.height; r++ )
				{
					for ( c = 0; c < repData.width; c++ )
					{
						rep.push( repData.getPixel( c, r ) );
					}
				}
			}
			
			for ( r = 0; r < placeData.height; r++ )
			{
				for ( c = 0; c < placeData.width; c++ )
				{
					index = rep.indexOf( placeData.getPixel( c, r ) );
					if ( index >= 0 )
					{
						index = index % entities.length;
						newbie = world.add( new entities[ index ] );
						newbie.x = c * _tileWidth;
						newbie.y = r * _tileHeight;
					}
				}
			}
		}
	}}
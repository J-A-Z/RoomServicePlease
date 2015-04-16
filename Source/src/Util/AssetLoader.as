package Util
{
	import Menus.AudioOptionsMenu;
	import Menus.GFXOptionMenu;
	import Menus.KeymapMenu;
	import Menus.MainMenu;
	import Menus.ManagementMenu;
	import Menus.OptionsMenu;
	import Menus.PlayMenu;
	import net.flashpunk.graphics.Image;
	import Main.GameEngine;
	
	/**
	 * @author Joe
	 */
	public class AssetLoader
	{
		
		public var backArrowH:Image, backArrowN:Image, bugButtonH:Image, bugButtonN:Image, controlsButtonH:Image, controlsButtonN:Image, 
		deleteButtonH:Image, deleteButtonN:Image, graphicsButtonH:Image, graphicsButtonN:Image, managementButtonH:Image, managementButtonN:Image, 
		menuButtonH:Image, menuButtonN:Image, optionsButtonH:Image, optionsButtonN:Image, playButtonH:Image, playButtonN:Image, saveButtonH:Image, 
		saveButtonN:Image, soundButtonH:Image, soundButtonN:Image, tutorialButtonH:Image, tutorialButtonN:Image, updateButtonH:Image, updateButtonN:Image;
		
		public var fileOneH:Image, fileOneN:Image, fileOneS:Image, fileTwoH:Image, fileTwoN:Image, fileTwoS:Image, fileThreeH:Image, fileThreeN:Image, fileThreeS:Image;
		
		public var controlsScreen:Image, graphicsScreen:Image, introScreen:Image, mainMenuScreen:Image, managementScreen:Image, optionsScreen:Image, 
		playScreen:Image, soundScreen:Image;
		
		public var volSliderTrack:Image, volSliderKnob:Image, brightSliderTrack:Image, brightSliderKnob:Image;
		
		public var colliderChartOne:Class, levelMapOne:Class, tileChartOne:Class, tileSetOne:Class, entityChartOne:Class, entityMapOne:Class;
		
		private var imagesDone:Boolean = false;
		private var soundsDone:Boolean = false;
		private var menusDone:Boolean = false;
		
		public function AssetLoader()
		{
		}
		
		public function load():void
		{
			
			loadImages();
			
			loadSounds();
			
			loadMenus();
		
		}
		
		private function loadImages():void
		{
			
			//////////////////////////////////////////////////////////////////
			
			// Buttons
			
			[Embed(source="../../assets/buttons/backArrowHover.png")] var _01:Class;
			backArrowH = new Image(_01);
			
			[Embed(source="../../assets/buttons/backArrowNeutral.png")] var _02:Class;
			backArrowN = new Image(_02);
			
			[Embed(source="../../assets/buttons/bugButtonHover.png")] var _03:Class;
			bugButtonH = new Image(_03);
			
			[Embed(source="../../assets/buttons/bugButtonNeutral.png")] var _04:Class;
			bugButtonN = new Image(_04);
			
			[Embed(source="../../assets/buttons/controlsButtonHover.png")] var _05:Class;
			controlsButtonH = new Image(_05);
			
			[Embed(source="../../assets/buttons/controlsButtonNeutral.png")] var _06:Class;
			controlsButtonN = new Image(_06);
			
			[Embed(source="../../assets/buttons/deleteButtonHover.png")] var _07:Class;
			deleteButtonH = new Image(_07);
			
			[Embed(source="../../assets/buttons/deleteButtonNeutral.png")] var _08:Class;
			deleteButtonN = new Image(_08);
			
			[Embed(source="../../assets/buttons/fileOneHover.png")] var _09:Class;
			fileOneH = new Image(_09);
			
			[Embed(source="../../assets/buttons/fileOneNeutral.png")] var _10:Class;
			fileOneN = new Image(_10);
			
			[Embed(source="../../assets/buttons/fileOneSelected.png")] var _11:Class;
			fileOneS = new Image(_11);
			
			[Embed(source="../../assets/buttons/fileTwoHover.png")] var _12:Class;
			fileTwoH = new Image(_12);
			
			[Embed(source="../../assets/buttons/fileTwoNeutral.png")] var _13:Class;
			fileTwoN = new Image(_13);
			
			[Embed(source="../../assets/buttons/fileTwoSelected.png")] var _14:Class;
			fileTwoS = new Image(_14);
			
			[Embed(source="../../assets/buttons/fileThreeHover.png")] var _15:Class;
			fileThreeH = new Image(_15);
			
			[Embed(source="../../assets/buttons/fileThreeNeutral.png")] var _16:Class;
			fileThreeN = new Image(_16);
			
			[Embed(source="../../assets/buttons/fileThreeSelected.png")] var _17:Class;
			fileThreeS = new Image(_17);
			
			[Embed(source="../../assets/buttons/graphicsButtonHover.png")] var _18:Class;
			graphicsButtonH = new Image(_18);
			
			[Embed(source="../../assets/buttons/graphicsButtonNeutral.png")] var _19:Class;
			graphicsButtonN = new Image(_19);
			
			[Embed(source="../../assets/buttons/managementButtonHover.png")] var _20:Class;
			managementButtonH = new Image(_20);
			
			[Embed(source="../../assets/buttons/managementButtonNeutral.png")] var _21:Class;
			managementButtonN = new Image(_21);
			
			[Embed(source="../../assets/buttons/menuButtonHover.png")] var _22:Class;
			menuButtonH = new Image(_22);
			
			[Embed(source="../../assets/buttons/menuButtonNeutral.png")] var _23:Class;
			menuButtonN = new Image(_23);
			
			[Embed(source="../../assets/buttons/optionsButtonHover.png")] var _24:Class;
			optionsButtonH = new Image(_24);
			
			[Embed(source="../../assets/buttons/optionsButtonNeutral.png")] var _25:Class;
			optionsButtonN = new Image(_25);
			
			[Embed(source="../../assets/buttons/playButtonHover.png")] var _26:Class;
			playButtonH = new Image(_26);
			
			[Embed(source="../../assets/buttons/playButtonNeutral.png")] var _27:Class;
			playButtonN = new Image(_27);
			
			[Embed(source="../../assets/buttons/saveButtonHover.png")] var _28:Class;
			saveButtonH = new Image(_28);
			
			[Embed(source="../../assets/buttons/saveButtonNeutral.png")] var _29:Class;
			saveButtonN = new Image(_29);
			
			[Embed(source="../../assets/buttons/soundButtonHover.png")] var _30:Class;
			soundButtonH = new Image(_30);
			
			[Embed(source="../../assets/buttons/soundButtonNeutral.png")] var _31:Class;
			soundButtonN = new Image(_31);
			
			[Embed(source="../../assets/buttons/tutorialButtonHover.png")] var _32:Class;
			tutorialButtonH = new Image(_32);
			
			[Embed(source="../../assets/buttons/tutorialButtonNeutral.png")] var _33:Class;
			tutorialButtonN = new Image(_33);
			
			[Embed(source="../../assets/buttons/updateButtonHover.png")] var _34:Class;
			updateButtonH = new Image(_34);
			
			[Embed(source="../../assets/buttons/updateButtonNeutral.png")] var _35:Class;
			updateButtonN = new Image(_35);
			
			// Screens
			
			[Embed(source="../../assets/screens/controlsScreen.png")] var _50:Class;
			controlsScreen = new Image(_50);
			
			[Embed(source="../../assets/screens/graphicsScreen.png")] var _51:Class;
			graphicsScreen = new Image(_51);
			
			
			
			[Embed(source="../../assets/screens/mainMenuScreen.png")] var _53:Class;
			mainMenuScreen = new Image(_53);
			
			[Embed(source="../../assets/screens/managementScreen.png")] var _54:Class;
			managementScreen = new Image(_54);
			
			[Embed(source="../../assets/screens/optionsScreen.png")] var _55:Class;
			optionsScreen = new Image(_55);
			
			[Embed(source="../../assets/screens/playScreen.png")] var _56:Class;
			playScreen = new Image(_56);
			
			[Embed(source="../../assets/screens/soundScreen.png")] var _57:Class;
			soundScreen = new Image(_57);
					
			// Level One Images
			
			[Embed(source = "../../assets/levelCharts/levelOne/colliderChartOne.png")] var _70:Class;
			colliderChartOne = _70;
			
			[Embed(source = "../../assets/levelCharts/levelOne/levelMapOne.png")] var _71:Class;
			levelMapOne = _71;
			
			[Embed(source = "../../assets/levelCharts/levelOne/tileChartOne.png")] var _72:Class;
			tileChartOne = _72;
			
			[Embed(source = "../../assets/levelCharts/levelOne/tileSetOne32.png")] var _73:Class;
			tileSetOne = _73;
			
			[Embed(source = "../../assets/levelCharts/levelOne/entityChartOne.png")] var _74:Class;
			entityChartOne = _74;
			
			[Embed(source = "../../assets/levelCharts/levelOne/entityMapOne.png")] var _75:Class;
			entityMapOne = _75;
			
			// Misc
			
			[Embed(source = "../../assets/slider/sliderBackGround.png")] var _100:Class;
			volSliderTrack = new Image(_100);
			
			[Embed(source = "../../assets/slider/slider.png")] var _101:Class;
			volSliderKnob = new Image(_101);
			
			[Embed(source = "../../assets/slider/sliderBackGround.png")] var _102:Class;
			brightSliderTrack = new Image(_102);
			
			[Embed(source = "../../assets/slider/slider.png")] var _103:Class;
			brightSliderKnob = new Image(_103);
			
			//////////////////////////////////////////////////////////////////
			
			imagesDone = true;
		
		}
		
		private function loadSounds():void
		{
			
			//////////////////////////////////////////////////////////////////
			
			//////////////////////////////////////////////////////////////////
			
			soundsDone = true;
		
		}
		
		private function loadMenus():void
		{
			
			//////////////////////////////////////////////////////////////////
			
			GameEngine.mainMenu = new MainMenu;
			
			GameEngine.playMenu = new PlayMenu;
			
			GameEngine.optionsMenu = new OptionsMenu;
			
			GameEngine.managementMenu = new ManagementMenu;
			
			GameEngine.audioOptionsMenu = new AudioOptionsMenu;
			
			GameEngine.GFXOptionsMenu = new GFXOptionMenu;
			
			GameEngine.keymapMenu = new KeymapMenu;
			
			//////////////////////////////////////////////////////////////////
			
			menusDone = true;
		
		}
		
		public function progress():int
		{
			
			if (imagesDone && !soundsDone && !menusDone)
			{
				
				return 1;
				
			}
			else if (imagesDone && soundsDone && !menusDone)
			{
				
				return 2;
				
			}
			else if (imagesDone && soundsDone && menusDone)
			{
				
				return 3;
				
			}
			else
			{
				
				return 0;
				
			}
		
		}
	
	}

}
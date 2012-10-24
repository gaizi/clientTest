package s1.manage
{
	import flash.display.Sprite;

	public class LayerManager
	{
		public static var playerLayer:Sprite;
		
		public static function init(viewRoot:Sprite):void
		{
			LayerManager.playerLayer = new Sprite();
			LayerManager.playerLayer.mouseEnabled = false;
			viewRoot.addChild(LayerManager.playerLayer);
		}
	}
}
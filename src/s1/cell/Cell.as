package s1.cell
{
	import flash.display.MovieClip;
	import flash.display.Shape;
	import flash.display.Sprite;
	
	import s1.define.CellStateType;

	/**
	 * 负责创建显示对象并记录类型
	 * @author jjww
	 * 
	 */	
	public class Cell extends Sprite
	{
		public function Cell(largeType:int, detailType:int)
		{
			_largeType = largeType;
			_detailType = detailType;
			_state = CellStateType.UN_USE;
			
			drawNow();
		}
		
		public function setStyle(largeType:int, detailType:int):void
		{
			_largeType = largeType;
			_detailType = detailType;
			
			drawNow();
		}
		
		public function drawNow():void
		{
			_skin = new MovieClip();
			_skin.graphics.beginFill(0);
			_skin.graphics.drawRect(0, 0, 20, 20);
			_skin.graphics.endFill();
			addChild(_skin);
		}
		
		//
		protected var _state:int;
		private var _largeType:int;
		private var _detailType:int;
		private var _skin:MovieClip;
		
		public function get largeType():int
		{
			return _largeType;
		}
		
		public function get detailType():int
		{
			return _detailType;
		}
		
		public function get skin():MovieClip
		{
			return _skin;
		}
	}
}
package s1.cell
{
	import com.greensock.TweenLite;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	import s1.define.CellStateType;
	import s1.define.CellType;
	import s1.implement.IItemCell;

	public class PlayerCell extends Cell implements IItemCell
	{
		public function PlayerCell(type:int)
		{
			super(CellType.PLAYER, type);
		}
		
		
		//
		public function get state():int
		{
			return _state;
		}
		
		public function set state(value:int):void
		{
			_state = value;
		}
		
		public function move(x:Number, y:Number):void
		{
			TweenLite.to(skin, 1, {x:x, y:y});
		}
		
		/**
		 * 
		 * @param directionType [PlayerDirectionType.as]
		 * @param actionType [PlayerActionType.as]
		 * 
		 */		
		public function playAction(directionType:String, actionType:String):void
		{
			
		}
	}
}
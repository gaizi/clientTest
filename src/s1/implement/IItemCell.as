package s1.implement
{
	public interface IItemCell
	{
		function set state(value:int):void;
		function get state():int;
		function move(x:Number, y:Number):void;
		function playAction(directionType:String, actionType:String):void;
	}
}
package s2
{
	public interface IActionFront extends IActionNotifier
	{
		function registerCell( cell:IActionCell ) : void;
		
		function removeCell( cell:IActionCell ) : void;
		
		function hasMediator( cell:IActionCell ) : Boolean;
		
		function registerObserver(listActionInterests:Array, handleAction:Function):void;
		
		function notifyObservers( note:IActionNotice ) : void;
	}
}
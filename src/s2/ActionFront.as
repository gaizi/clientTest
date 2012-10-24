package s2
{
	import flash.utils.Dictionary;

	public class ActionFront implements IActionFront
	{
		public function ActionFront()
		{
			if (instance != null) throw new Error(SINGLETON_MSG);
			instance = this;
			initializeFront();
		}
		
		public static function getInstance():IActionFront
		{
			if (instance == null) instance = new ActionFront();
			return instance;
		}
		
		private function initializeFront():void
		{
			cellMap = {};
		}
		
		public function registerCell(cell:IActionCell):void
		{
			cellMap[cell] = cell;
			
			registerObserver(cell.listActionInterests(), cell.handleAction);
			
			cell.onRegister();
		}
		
		public function registerObserver(listActionInterests:Array, handleAction:Function):void
		{
			for (var i:int=0; i<listActionInterests.length; i++)
			{
				var key:String = listActionInterests[i];
				if (observerMap[key])
					observerMap[key].push(handleAction);
				else
					observerMap[key] = [handleAction];
			}
		}
		
		public function removeCell(cell:IActionCell):void
		{
			if (cellMap[cell])
			{
				delete cellMap[cell];
				cell.onRemove();
			}
		}
		
		public function hasMediator(cell:IActionCell):Boolean
		{
			return cellMap[cell] != null;
		}
		
		public function notifyObservers(note:IActionNotice):void
		{
			var observers:Array = observerMap[note.getName()];
			if (observers == null)
				return;
			
			for (var i:int=0; i<observers.length; i++)
			{
				var func:Function = observers[i];
				func(note);
			}
		}
		
		public function sendActionNotice(notificationName:String, body:Object=null, type:String=null):void
		{
			notifyObservers( new ActionNotice(notificationName, body, type) );
		}
		
		
		
		protected var cellMap:Object;
		
		protected var observerMap:Object;
		
		protected static var instance : IActionFront; 
		
		protected const SINGLETON_MSG	: String = "ActionFront Singleton already constructed!";
	}
}
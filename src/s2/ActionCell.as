package s2
{
	public class ActionCell implements IActionCell
	{
		public function ActionCell(viewComponent:Object)
		{
			this.viewComponent = viewComponent;	
		}
		
		public function listActionInterests():Array
		{
			return [];
		}
		
		public function handleAction(actionNotice:IActionNotice):void{}
		
		public function getViewComponent():Object
		{
			return viewComponent;
		}
		
		public function setViewComponent(viewComponent:Object):void
		{
			this.viewComponent = viewComponent;	
		}
		
		public function onRegister():void
		{
			
		}
		
		public function onRemove():void
		{
			
		}
		
		protected var viewComponent:Object;
	}
}
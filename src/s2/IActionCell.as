package s2
{
	public interface IActionCell
	{
		function listActionInterests():Array;
		
		function handleAction(actionNotice:IActionNotice):void;
		
		function getViewComponent():Object;
		
		function setViewComponent(viewComponent:Object):void;
		
		function onRegister():void;
		
		function onRemove():void;
	}
}
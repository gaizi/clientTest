package s2
{
	public interface IActionNotifier
	{
		function sendActionNotice(notificationName:String, body:Object=null, type:String=null):void;
	}
}
package s2
{
	public class ActionNotifier implements IActionNotifier
	{
		public function sendActionNotice(noticeName:String, body:Object=null, type:String=null):void
		{
			front.sendActionNotice(noticeName, body, type);
		}
		
		protected var front:ActionFront = ActionFront.getInstance();
	}
}
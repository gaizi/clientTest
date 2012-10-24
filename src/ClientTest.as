package
{
	import com.sloader.SLoader;
	import com.sloader.define.SLoaderEventType;
	import com.sloader.define.SLoaderFile;
	import com.sloader.define.SLoaderInfo;
	
	import flash.display.Sprite;
	import flash.events.TimerEvent;
	import flash.utils.Timer;
	import flash.utils.clearInterval;
	import flash.utils.setInterval;
	
	import s1.cell.Cell;
	import s1.cell.PlayerCell;
	import s1.manage.LayerManager;
	import s1.manage.PlayerCellManage;
	
	import s2.ActionFront;
	
	[SWF(frameRate="24",height="600",width="1000",backgroundColor="0")]
	public class ClientTest extends Sprite
	{
		public function ClientTest()
		{
			trace(
				Class(xxsfaf).toString()
				);
			ActionFront.getInstance();
		}
	}
}

class xxsfaf
{
	
}
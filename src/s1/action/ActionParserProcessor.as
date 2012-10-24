package s1.action
{
	import s1.action.handler.ActionParser_CellPlayer;
	import s1.define.CellType;
	import s1.implement.IActionParser;

	/**
	 * 绑定动作处理类
	 * @author jjww
	 * 
	 */	
	public class ActionParserProcessor
	{
		public static function init():void
		{
			register();
		}
		
		private static var _map:Object;
		private static function register():void
		{
			_map = {};
			_map[getName(CellType.PLAYER)] = new ActionParser_CellPlayer();
		}
		
		public static function getActionParserClass(cellType:int):IActionParser
		{
			return _map[getName(cellType)];
		}
		
		private static function getName(cellType:int):String
		{
			return "ap" + cellType + "_";
		}
	}
}
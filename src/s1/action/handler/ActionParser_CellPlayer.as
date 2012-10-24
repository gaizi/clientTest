package s1.action.handler
{
	import s1.cell.PlayerCell;
	import s1.cell.PlayerCell_No1;
	import s1.implement.IActionParser;
	import s1.implement.IItemCell;
	import s1.manage.PlayerCellManage;

	public class ActionParser_CellPlayer implements IActionParser
	{
		public function ActionParser_CellPlayer()
		{
			
		}
		
		public function parser(key:String, action:String, info:Object):void
		{
			var cell:PlayerCell = PlayerCellManage.instance.getCell(key);
			cell.accessibilityImplementation
		}
	}
}
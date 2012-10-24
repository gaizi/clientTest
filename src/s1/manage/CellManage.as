package s1.manage
{
	import s1.define.CellType;
	import s1.implement.ICellManage;
	import s1.implement.IItemCell;

	public class CellManage// implements ICellManage
	{
		private var _type:int;
		
		public function CellManage(type:int)
		{
			_type = type;
		}
		
		public function get type():int
		{
			return _type;
		}
		
		public function getCell(key:String):IItemCell
		{
			return CellPoolManage.getCell(getCellTypeName() + key);
		}
		
		public function setCellMap(key:String, cell:IItemCell):void
		{
			CellPoolManage.setCellMap(getCellTypeName() + key, cell);
		}
		
		public function getUnuseCell(detailType:int):IItemCell
		{
			var cellClass:Class = CellType.getCellTypeClass(_type, detailType);
			return CellPoolManage.getUnuseCell(cellClass);
		}
		
		private function getCellTypeName():String
		{
			return "type_" + _type;
		}
	}
}
package s1.manage
{
	import s1.cell.PlayerCell;
	import s1.define.CellStateType;
	import s1.implement.IItemCell;

	public class CellPoolManage
	{
		private var _pool:Object;
		private var _map:Object = {};
		
		
		private static var _instance:CellPoolManage = new CellPoolManage();
		
		public static function getCell(key:String):IItemCell
		{
			return _instance._map[key];
		}
		
		public static function setCellMap(key:String, cell:IItemCell):void
		{
			_instance._map[key] = cell;
		}
		
		public static function getUnuseCell(iitemCellClass:Class):IItemCell
		{
			if (!(iitemCellClass is IItemCell))
				return null;
			
			var key:String = Class(iitemCellClass).toString();
			
			if (!(_instance._pool[key] is Vector.<IItemCell>))
				_instance._pool[key] = new Vector.<IItemCell>();
			
			var cellVec:Vector.<IItemCell> = _instance._pool[key];
			for each(var cell:IItemCell in cellVec)
			{
				if (cell.state == CellStateType.UN_USE)
					return cell;
			}
			
			var newCell:IItemCell = new iitemCellClass();
			cellVec.push(newCell);
			
			return newCell;
		}
	}
}
package s1.define
{
	import s1.cell.PlayerCell;

	public class CellType
	{
		public static const PLAYER:int = 1;
		
		
		public static function getCellTypeClass(largeType:int, detailType:int):Class
		{
			switch (largeType)
			{
				case PLAYER:
					return PlayerCell;
			}
			
			return null;
		}
	}
}
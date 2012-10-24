package s1.implement
{
	public interface ICellManage
	{
		function getCell(key:String):IItemCell;
		function setCellMap(key:String, cell:IItemCell):void;
		function getUnuseCell():IItemCell;
	}
}
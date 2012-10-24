package s1.manage
{
	import s1.cell.PlayerCell;
	import s1.cell.PlayerCell_No1;
	import s1.define.CellStateType;
	import s1.define.CellType;
	import s1.implement.ICellManage;
	import s1.implement.IItemCell;

	public class PlayerCellManage extends CellManage
	{
		public function PlayerCellManage()
		{
			super(CellType.PLAYER);
			instance = this;
		}
		
		public static var instance:PlayerCellManage;
		{
			
		}
		
//		private function getPlayerRenderer(rid:int):PlayerCell
//		{
//			if (!renderers[rid])
//				renderers[rid] = getUnusedPlayerRenderer();
//			
//			return renderers[rid];
//		}
//		
//		private var _rendererPool:Vector.<PlayerCell> = new Vector.<PlayerCell>();
//		private function getUnusedPlayerRenderer():PlayerCell
//		{
//			var renderer:PlayerCell;
//			for each(renderer in _rendererPool)
//			{
//				if (renderer.state == CellStateType.UN_USE)
//					return renderer;
//			}
//			renderer = new PlayerCell(LayerManager.playerLayer);
//			_rendererPool.push(renderer);
//			
//			return renderer;
//		}
//		
//		private function invalid(rid:int):void
//		{
//			var renderer:PlayerCell = renderers[rid];
//			delete renderers[rid];
//			
//			if (!renderer)
//				return;
//			
//			renderer.state = CellStateType.UN_USE;
//		}
//		
//		public function updateActions(value:Object):void
//		{
//			parserActions(value.type, value.actions);
//		}
//		
//		private function parserActions(type:int, actions:Array):void
//		{
//			switch (type)
//			{
//				case PlayerActionSceneType.FIGHT:
//					
//					break;
//			}
//		}
//		
//		private function playAction(id:int, action:String, info:Object):void
//		{
//			var renderer:PlayerCell = getPlayerRenderer(id);
//			renderer.playAction(action, info);
//		}
	}
}
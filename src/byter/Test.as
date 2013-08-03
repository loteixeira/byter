package byter
{
	import br.dcoder.console.*;

	import flash.display.*;
	import flash.events.*;
	import flash.geom.*;
	import flash.utils.*;

	public class Test extends Sprite
	{
		public function Test()
		{
			Console.create(this);
			addEventListener(Event.ADDED_TO_STAGE, addedToStage);
		}

		private function addedToStage(e:Event):void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.addEventListener(Event.RESIZE, resize);

			removeEventListener(Event.ADDED_TO_STAGE, addedToStage);
			resize(null);
			start();
		}

		private function resize(e:Event):void
		{
			Console.instance.area = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
		}

		private function start():void
		{
			var bytes:ByteArray = new ByteArray();
			//var v:uint = int8(bytes, 42);
			//cpln(int8(ptr(bytes, v)));

			cpln(ByteArray.constructor.writeFloat);

			/*var p:Pointer = new Pointer(bytes, bool(bytes, true));
			bytes.position = 0;
			cpln(bool(bytes));*/
		}
	}
}
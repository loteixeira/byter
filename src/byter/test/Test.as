package byter.test
{
	import br.dcoder.console.*;

	import byter.*;

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
			var p:Pointer = new Pointer(uint8(bytes, -1));
			cpln("p = " + uint8(p));
			cpln("changing 'p'");
			uint8(p, 1);
			cpln("p = " + uint8(p));

			var pp:UInt8Pointer = new UInt8Pointer(p);
			cpln(pp.val);

			var p2:Pointer = new Pointer(bytes, bytes.length);
			uint8(p2, 11);
			cpln(p2.val);

			memcpy(p2, p, 1);
			cpln(p2.val);

			cpln(sizeof(float64));

			cpln("---");

			//cpln(char(105));

			var p3:Pointer = new Pointer(bytes, bytes.length);
			var start:uint = bytes.length;
			//bytes.length += 10;
			memset(p3, 0, 10);
			memcpy(p3, "oee", 10);
			//str(p3, "oi");
			cpln("'" + str(p3, 10) + "'");

			for (; p3.pos < start + 10; p3.pos++)
			{
				cpln(p3.val);
			}
		}
	}
}
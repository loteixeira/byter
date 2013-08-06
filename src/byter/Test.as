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
			var p:Pointer = new Pointer(bool(bytes, true));
			cpln("p = " + bool(p));
			cpln("uint8 = " + uint8(p));
			cpln("int8 = " + int8(p));
			cpln("changing 'p'");
			bool(p, false);
			cpln("p = " + bool(p));
			cpln("uint8 = " + uint8(p));
			cpln("int8 = " + int8(p));

			//var p:Pointer = new Pointer(bytes, bool(bytes, true));
			//cpln(bool(p));
		}
	}
}
package byter.test
{
	import br.dcoder.console.*;

	import byter.*;

	import flash.display.*;
	import flash.display3D.*;
	import flash.events.*;
	import flash.geom.*;
	import flash.utils.*;

	public class Stage3DTest extends Sprite
	{
		private var stage3d:Stage3D;
		private var context3d:Context3D;

		public function Stage3DTest()
		{
			Console.create(this);
			Console.instance.hide();
			cpln("starting Stage3DTest...");

			addEventListener(Event.ADDED_TO_STAGE, addedToStage);
		}

		private function addedToStage(e:Event):void
		{
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			stage.addEventListener(Event.RESIZE, resize);

			removeEventListener(Event.ADDED_TO_STAGE, addedToStage);

			stage3d = stage.stage3Ds[0];
			stage3d.x = stage3d.y = 0;
			stage3d.addEventListener(Event.CONTEXT3D_CREATE, context3dCreate);
			stage3d.requestContext3D();
		}

		private function context3dCreate(event:Event):void
		{
			context3d = stage3d.context3D;
			context3d.enableErrorChecking = true;
			cpln("driver: " + context3d.driverInfo);

			resize(null);
			start();
			stage.addEventListener(Event.ENTER_FRAME, enterFrame);
		}

		private function resize(e:Event):void
		{
			Console.instance.area = new Rectangle(0, 0, stage.stageWidth, stage.stageHeight);
			context3d.configureBackBuffer(stage.stageWidth, stage.stageHeight, 0);
		}

		private function start():void
		{
			var vbpod:VertexBufferPOD = new VertexBufferPOD(4);
			var vec3:Vector3POD = new Vector3POD();

			vbpod.position(0, vec3);
			vec3.setTo(-0.5, -0.5, 0);
			vbpod.color(0, vec3);
			vec3.setTo(1, 0, 0);

			vbpod.position(1, vec3);
			vec3.setTo(0.5, -0.5, 0);
			vbpod.color(1, vec3);
			vec3.setTo(0, 1, 0);

			vbpod.position(2, vec3);
			vec3.setTo(0.5, 0.5, 0);
			vbpod.color(2, vec3);
			vec3.setTo(0, 0, 1);

			vbpod.position(3, vec3);
			vec3.setTo(-0.5, 0.5, 0);
			vbpod.color(3, vec3);
			vec3.setTo(1, 0, 1);

			vbpod.upload(context3d);
		}

		private function enterFrame(e:Event):void
		{
			context3d.clear(0, 0, 0);
			context3d.present();
		}
	}
}
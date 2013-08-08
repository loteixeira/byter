package byter.test
{
	import byter.*;

	import flash.display3D.*;
	import flash.utils.*;

	public class VertexBufferPOD
	{
		private var _count:uint;
		private var comps:Array;
		private var defs:Array;
		private var pod:POD;

		private var vb3d:VertexBuffer3D;

		public function VertexBufferPOD(_count:uint, comps:Array, bytes:ByteArray = null)
		{
			this._count = _count;
			this.comps = comps;

			defs = [];
			var l:uint = comps.length;

			for (var i:uint = 0; i < l; i++)
			{
				var comp:String = comps[i];

				if (comp == "bytes4")
					defs.push(uint8, uint8, uint8, uint8);
				else if (comp == "float1")
					defs.push(float32);
				else if (comp == "float2")
					defs.push(float32, float32);
				else if (comp == "float3")
					defs.push(float32, float32, float32);
				else if (comp == "float4")
					defs.push(float32, float32, float32, float32);
			}

			pod = new POD(bytes || new ByteArray(), defs);
			pod.reset(_count);
			vb3d = null;
		}

		public function position(index:uint, output:Vector3POD = null):Vector3POD
		{
			if (!output)
				output = new Vector3POD();

			pod.i = index;
			output.base = pod.field(0);

			return output;
		}

		public function color(index:uint, output:Vector3POD = null):Vector3POD
		{
			if (!output)
				output = new Vector3POD();

			pod.i = index;
			output.base = pod.field(3);

			return output;
		}

		public function upload(context3d:Context3D):void
		{
			if (!vb3d)
				vb3d = context3d.createVertexBuffer(_count, 6);

			vb3d.uploadFromByteArray(pod.base, 0, 0, _count);
		}

		public function dispose():void
		{
			if (vb3d)
				vb3d.dispose();
		}
	}
}
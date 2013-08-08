package byter.test
{
	import byter.*;

	import flash.utils.*;

	public class Vector3POD
	{
		private var pod:POD;

		public function Vector3POD()
		{
			pod = new POD(null, [float32, float32, float32]);
		}

		public function get base():ByteArray
		{
			return pod.base;
		}

		public function set base(source:*):void
		{
			pod.base = source;
		}

		public function get x():Number
		{
			return float32(pod.field(0));
		}

		public function set x(_x:Number):void
		{
			float32(pod.field(0), _x);
		}

		public function get y():Number
		{
			return float32(pod.field(1));
		}

		public function set y(_y:Number):void
		{
			float32(pod.field(1), _y);
		}

		public function get z():Number
		{
			return float32(pod.field(2));
		}

		public function set z(_z:Number):void
		{
			float32(pod.field(2), _z);
		}

		public function setTo(_x:Number, _y:Number, _z:Number):void
		{
			float32(pod.field(0), _x);
			float32(pod.field(1), _y);
			float32(pod.field(2), _z);
		}
	}
}
package byter
{
	import flash.utils.*;

	public class POD
	{
		private var basePointer:Pointer;
		private var count:uint;
		private var _len:uint;
		private var _i:uint.
		private var sizes:Array;
		private var offsets:Array;

		public function POD(src:*, def:Array)
		{
			basePointer = new Pointer(ptr(src));

			count = defs.length;
			sizes = [];
			offsets = [];
			var accum:uint = 0;

			for (var i:uint = 0; i < count; i++)
			{
				offsets.push(accum);
				var size:uint = isNaN(defs[i]) ? sizeof(defs[i]) : defs[i];
				sizes.push(size);
				accum += size;
			}

			_len = accum;
			_i = 0;
		}

		public function get base():ByteArray
		{
			return basePointer.raw;
		}

		public function get len():uint
		{
			return _len;
		}

		public function get i():uint
		{
			return _i;
		}

		public function set(_i:uint):void
		{
			this._i = _i;
		}

		public function field(index:uint):*
		{
			var bytes:ByteArray = basePointer._raw;
			bytes.position = basePointer.pos + _i * _len + offsets[index];
			return bytes;
		}

		public function size(index:uint):uint
		{
			return sizes[index];
		}

		public function reset(n:uint = 1):void
		{
			var bytes:ByteArray = basePointer.raw;
			var l:uint = n * _len;

			for (var i:uint = 0; i < l; i++)
				bytes.writeByte(0);
		}
	}
}
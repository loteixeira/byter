package byter
{
	import flash.utils.*;

	public class POD
	{
		private var _basePointer:Pointer;
		private var _len:uint;
		private var _i:uint;
		private var sizes:Array;
		private var offsets:Array;

		public function POD(src:*, defs:Array)
		{
			_basePointer = new Pointer(src);

			sizes = [];
			offsets = [];
			var count:uint = defs.length;
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
			return _basePointer.raw;
		}

		public function set base(source:*):void
		{
			_basePointer.raw = ptr(source);
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
			var bytes:ByteArray = _basePointer._raw;
			bytes.position += _i * _len + offsets[index];
			return bytes;
		}

		public function size(index:uint):uint
		{
			return sizes[index];
		}

		public function reset(n:uint = 1):void
		{
			var bytes:ByteArray = _basePointer.raw;
			var l:uint = n * _len;

			for (var i:uint = 0; i < l; i++)
				bytes.writeByte(0);
		}
	}
}
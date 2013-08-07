package byter
{
	import flash.utils.*;

	public class Pointer
	{
		internal var _raw:ByteArray;
		internal var _pos:uint;

		public function Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			_raw = ptr(source, _pos);
			this._pos = (_pos == nil ? _raw.position : _pos);
		}

		public function get raw():ByteArray
		{
			_raw.position = _pos;
			return _raw;
		}

		public function get pos():uint
		{
			return _pos;
		}

		public function set pos(_pos:uint):void
		{
			this._pos = _pos;
		}

		public function get val():*
		{
			return _raw[_pos];
		}

		public function set val(_val:*):void
		{
			_raw[_pos] = val;
		}
	}
}
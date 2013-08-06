package byter
{
	import flash.utils.*;

	public class Pointer
	{
		private var _raw:ByteArray;
		private var _pos:uint;

		public function Pointer(_raw:ByteArray, _pos:uint = uint.MAX_VALUE)
		{
			this._raw = _raw;
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
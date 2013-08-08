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

			if (_raw)
				this._pos = (_pos == nil ? _raw.position : _pos);
		}

		public function get raw():ByteArray
		{
			if (_raw)
				_raw.position = _pos;

			return _raw;
		}

		public function set raw(source:*):void
		{
			_raw = ptr(source);

			if (_raw)
				_pos = _raw.position;
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
			if (_raw)
				return _raw[_pos];

			return null;
		}

		public function set val(_val:*):void
		{
			if (_raw)
				_raw[_pos] = val;
		}
	}
}
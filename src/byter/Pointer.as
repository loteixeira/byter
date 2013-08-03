package byter
{
	import flash.utils.*;

	public class Pointer
	{
		internal var _raw:ByteArray;
		internal var _pos:uint;

		public function Pointer(_raw:ByteArray, _pos:int = -1)
		{
			this._raw = raw;
			this._pos = (_pos == -1 ? _raw.position : _pos);
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

		public function get val():*
		{
			return NaN;
		}

		public function set val(_val:*):void
		{
		}
	}
}
package byter
{
	public class Int8Pointer extends Pointer
	{
		public function Int8Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readByte();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeByte(_val);
		}
	}
}
package byter
{
	public class Int16Pointer extends Pointer
	{
		public function Int16Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readShort();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeShort(_val);
		}
	}
}
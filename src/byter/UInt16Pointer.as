package byter
{
	public class UInt16Pointer extends Pointer
	{
		public function UInt16Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readUnsignedShort();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeShort(_val);
		}
	}
}
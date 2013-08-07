package byter
{
	public class UInt8Pointer extends Pointer
	{
		public function UInt8Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readUnsignedByte();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeByte(_val);
		}
	}
}
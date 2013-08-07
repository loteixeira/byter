package byter
{
	public class UInt32Pointer extends Pointer
	{
		public function UInt32Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readUnsignedInt();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeUnsignedInt(_val);
		}
	}
}
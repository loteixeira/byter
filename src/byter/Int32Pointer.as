package byter
{
	public class Int32Pointer extends Pointer
	{
		public function Int32Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readInt();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeInt(_val);
		}
	}
}
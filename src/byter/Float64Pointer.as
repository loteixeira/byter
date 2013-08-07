package byter
{
	public class Float64Pointer extends Pointer
	{
		public function Float64Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readDouble();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeDouble(_val);
		}
	}
}
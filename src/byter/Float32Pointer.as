package byter
{
	public class Float32Pointer extends Pointer
	{
		public function Float32Pointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readFloat();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeFloat(_val);
		}
	}
}
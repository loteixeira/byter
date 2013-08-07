package byter
{
	public class BoolPointer extends Pointer
	{
		public function BoolPointer(source:*, _pos:uint = uint.MAX_VALUE)
		{
			super(source, _pos);
		}

		override public function get val():*
		{
			_raw.position = _pos;
			return _raw.readBoolean();
		}

		override public function set val(_val:*):void
		{
			_raw.position = _pos;
			return _raw.writeBoolean(_val);
		}
	}
}
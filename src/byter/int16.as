package byter
{
	import flash.utils.*;

	public function int16(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readShort();

		var p:uint = bytes.position;
		bytes.writeShort(value);
		bytes.position = p;
		return bytes;
	}
}
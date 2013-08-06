package byter
{
	import flash.utils.*;

	public function int8(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readByte();

		var p:uint = bytes.position;
		bytes.writeByte(value);
		bytes.position = p;
		return bytes;
	}
}
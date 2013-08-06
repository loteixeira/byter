package byter
{
	import flash.utils.*;

	public function uint8(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readUnsignedByte();

		var p:uint = bytes.position;
		bytes.writeByte(value);
		bytes.position = p;
		return bytes;
	}
}
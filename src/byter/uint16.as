package byter
{
	import flash.utils.*;

	public function uint16(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readUnsignedShort();

		var p:uint = bytes.position;
		bytes.writeShort(value);
		bytes.position = p;
		return bytes;
	}
}
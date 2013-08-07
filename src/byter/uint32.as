package byter
{
	import flash.utils.*;

	public function uint32(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readUnsignedInt();

		var p:uint = bytes.position;
		bytes.writeUnsignedInt(value);
		bytes.position = p;
		return bytes;
	}
}
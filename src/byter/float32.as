package byter
{
	import flash.utils.*;

	public function float32(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readFloat();

		var p:uint = bytes.position;
		bytes.writeFloat(value);
		bytes.position = p;
		return bytes;
	}
}
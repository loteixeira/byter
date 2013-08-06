package byter
{
	import flash.utils.*;

	public function float64(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readDouble();

		var p:uint = bytes.position;
		bytes.writeDouble(value);
		bytes.position = p;
		return bytes;
	}
}
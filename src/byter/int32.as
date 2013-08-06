package byter
{
	import flash.utils.*;

	public function int32(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readInt();

		var p:uint = bytes.position;
		bytes.writeInt(value);
		bytes.position = p;
		return bytes;
	}
}
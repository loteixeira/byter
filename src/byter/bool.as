package byter
{
	import flash.utils.*;

	public function bool(source:*, value:* = null):*
	{
		var bytes:ByteArray = ptr(source);

		if (value == null)
			return bytes.readBoolean();

		var p:uint = bytes.position;
		bytes.writeBoolean(value);
		bytes.position = p;
		return bytes;
	}
}
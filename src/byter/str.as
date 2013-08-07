package byter
{
	import flash.utils.*;

	public function str(source:*, value:*):*
	{
		var bytes:ByteArray = ptr(source);

		if (value is String)
		{
			var p:uint = bytes.position;
			bytes.writeUTFBytes(value);
			bytes.position = p;
			return bytes;
		}

		return bytes.readUTFBytes(value);
	}
}
package byter
{
	import flash.utils.*;

	public function uint16(source:*, value:* = null):*
	{
		if (source is ByteArray)
		{
			if (value == null)
			{
				return source.readUnsignedShort();
			}
			else
			{
				source.writeShort(value);
				return source.position - 2;
			}
		}

		throw new TypeError();
	}
}
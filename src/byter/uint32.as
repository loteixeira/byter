package byter
{
	import flash.utils.*;

	public function uint32(source:*, value:* = null):*
	{
		if (source is ByteArray)
		{
			if (value == null)
			{
				return source.readUnsignedInt();
			}
			else
			{
				source.writeInt(value);
				return source.position - 4;
			}
		}

		throw new TypeError();
	}
}
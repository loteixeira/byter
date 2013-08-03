package byter
{
	import flash.utils.*;

	public function int8(source:*, value:* = null):*
	{
		if (source is ByteArray)
		{
			if (value == null)
			{
				return source.readUnsignedByte();
			}
			else
			{
				source.writeByte(value);
				return source.position - 1;
			}
		}

		throw new TypeError();
	}
}
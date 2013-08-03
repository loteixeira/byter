package byter
{
	import flash.utils.*;

	public function int16(source:*, value:* = null):*
	{
		if (source is ByteArray)
		{
			if (value == null)
			{
				return source.readShort();
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
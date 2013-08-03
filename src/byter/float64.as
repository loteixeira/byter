package byter
{
	import flash.utils.*;

	public function float32(source:*, value:* = null):*
	{
		if (source is ByteArray)
		{
			if (value == null)
			{
				return source.readDouble();
			}
			else
			{
				source.writeDouble(value);
				return source.position - 8;
			}
		}

		throw new TypeError();
	}
}
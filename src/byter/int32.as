package byter
{
	import flash.utils.*;

	public function int32(source:*, value:* = null):*
	{
		if (source is ByteArray)
		{
			if (value == null)
			{
				return source.readInt();
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
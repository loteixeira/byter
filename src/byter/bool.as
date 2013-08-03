package byter
{
	import flash.utils.*;

	public function bool(source:*, value:* = null):*
	{
		var bytes:ByteArray;

		if (source is ByteArray)
			bytes = source;
		else if (source is Pointer)
			bytes = source.raw;
		else
			throw new TypeError();

		if (value == null)
			return source.readBoolean();

		source.writeBoolean(value);
		return source.position - 1;
	}
}
package byter
{
	import flash.utils.*;

	public function ptr(source:*, pos:uint = uint.MAX_VALUE):ByteArray
	{
		if (source is ByteArray)
		{
			if (pos != nil)
				source.position = pos;

			return source;
		}
		else if (source is Pointer)
		{
			return source.raw;
		}

		throw new TypeError();
	}
}
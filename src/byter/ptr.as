package byter
{
	import flash.utils.*;

	public function ptr(source:*, pos:uint = uint.MAX_VALUE):ByteArray
	{
		if (source is ByteArray)
		{
			if (pos != uint.MAX_VALUE)
				source.position = pos;

			return source;
		}
		else if (source is Pointer)
		{
			return source.raw;
		}
		else if (source is POD)
		{
			return source.base;
		}
		else if (source == null)
		{
			return null;
		}

		throw new TypeError();
	}
}
package byter
{
	import flash.utils.*;

	public function ptr(source:*, pos:int = -1):*
	{
		if (source is ByteArray)
		{
			if (pos > -1)
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
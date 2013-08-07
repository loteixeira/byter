package byter
{
	import flash.utils.*;

	public function auto(src:*):*
	{
		if (src is ByteArray || src is Pointer)
			return new Pointer(src);
		else if (src is Boolean)
			return new BoolPointer(src)
	}
}
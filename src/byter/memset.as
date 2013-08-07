package byter
{
	import flash.utils.*;

	public function memset(src:*, value:int, size:uint):*
	{
		var bSrc:ByteArray = ptr(src);

		for (var i:uint = 0; i < size; i++)
			bSrc.writeByte(value);

		return src;
	}
}
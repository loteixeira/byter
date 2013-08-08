package byter
{
	import flash.utils.*;

	public function memset(src:*, value:int, size:uint):ByteArray
	{
		var bSrc:ByteArray = ptr(src);
		var pos:uint = bSrc.position;

		for (var i:uint = 0; i < size; i++)
			bSrc.writeByte(value);

		bSrc.position = pos;
		return bSrc;
	}
}
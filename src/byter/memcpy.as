package byter
{
	import flash.utils.*;

	public function memcpy(dest:*, src:*, size:uint):*
	{
		tmp.position = 0;

		if (src is String)
		{
			tmp.writeUTFBytes(src);
			tmp.length = tmp.position > size ? size : tmp.position;
		}
		else
		{
			tmp.writeBytes(ptr(src), 0, size);
			tmp.length = size;
		}

		tmp.position = 0;
		var bytes:ByteArray = ptr(dest);
		bytes.writeBytes(tmp, 0, tmp.length);
		bytes.position = 0;
		return bytes;
	}
}
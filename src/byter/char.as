package byter
{
	public function char(src:*):*
	{
		if (src is String)
			return src.charCodeAt();
		
		tmp.length = 1;
		tmp.writeByte(src);
		tmp.position = 0;
		return tmp.readUTFBytes(1);
	}
}
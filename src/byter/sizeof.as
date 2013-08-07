package byter
{
	import flash.utils.*;

	public function sizeof(type:*):uint
	{
		if (type == bool || type == uint8 || type == int8 ||
			type is Boolean || type is BoolPointer || type is UInt8Pointer ||
			type is Int8Pointer || type is Pointer || type is ByteArray)
			return 1;
		if (type == uint16 || type == int16 || type is UInt16Pointer ||
			type is Int16Pointer)
			return 2;
		if (type == float32 || type == uint32 || type == int32 ||
			type is uint || type is int || type is Float32Pointer ||
			type is UInt32Pointer || type is Int32Pointer)
			return 4;
		if (type == float64 || type is Number || type is Float64Pointer)
			return 8;

		throw new TypeError();
	}
}
package byter
{
	public class POD
	{
		private var basePointer:Pointer;
		private var count:uint;
		private var offsets:Array;
		private var pointers:Array;

		public function POD(src:*, def:Array)
		{
			basePointer = new Pointer(ptr(src));

			count = defs.length;
			offsets = [];
			pointers = [];
			var accum:uint = 0;

			for (var i:uint = 0; i < count; i++)
			{
				offsets.push(accum);
				accum += isNaN(defs[i]) ? sizeof(defs[i]) : defs[i];
			}
		}
	}
}
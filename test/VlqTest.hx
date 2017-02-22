package;

import haxe.unit.TestCase;

using sourcemap.Vlq;

class VlqTest extends TestCase {

	public function testDecode () {
		var vlq = 'AAKkB';

		var result = vlq.decode();

		assertEquals(0, result.source);
		assertEquals(0, result.generatedColumn);
		assertEquals(5, result.line);
		assertEquals(18, result.column);
		assertFalse(result.hasName());
	}
}
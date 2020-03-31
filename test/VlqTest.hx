package;

import utest.Test;
import utest.Assert;

using sourcemap.Vlq;

class VlqTest extends Test {

	public function testDecode () {
		Assert.same([0, 0, 5, 18], 'AAKkB'.decode());
		Assert.same([0], 'A'.decode());
		Assert.same([0, 0, 1, -1, 2], 'ABCDE'.decode());
	}

	// public function testDecode_arbitraryLength () {
	// }
}
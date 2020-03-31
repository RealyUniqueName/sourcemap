package;

import utest.Test;
import utest.Assert;

using sourcemap.Vlq;

class VlqTest extends Test {

	public function testDecode () {
		var vlq = 'AAKkB';

		var result = vlq.decode();

		Assert.equals(0, result.source);
		Assert.equals(0, result.generatedColumn);
		Assert.equals(5, result.line);
		Assert.equals(18, result.column);
		Assert.isFalse(result.hasName());
	}
}
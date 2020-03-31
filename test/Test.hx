package;

import utest.UTest;

class Test {
	static public function main () {
		UTest.run([
			new VlqTest(),
			new MappingTest()
		]);
	}
}
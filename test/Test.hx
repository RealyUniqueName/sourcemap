package;

import haxe.unit.TestRunner;

class Test {
	static public function main () {
		var runner = new TestRunner();
		runner.add(new VlqTest());
		runner.add(new MappingTest());
		runner.run();
	}
}
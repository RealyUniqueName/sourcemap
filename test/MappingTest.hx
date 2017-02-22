package;

import sourcemap.SourcePos;
import haxe.unit.TestCase;
import haxe.Resource;
import haxe.Json;

class MappingTest extends TestCase {
	public function testMapping () {
		var map = new SourceMap(Resource.getString('test.map'));

		var actual = [];
		map.eachMapping(actual.push);
		var expected:Array<SourcePos> = Json.parse(Resource.getString('expected.json'));

		assertEquals(expected.length, actual.length);
		for (i in 0...expected.length) {
			assertEquals(expected[i].generatedColumn, actual[i].generatedColumn);
			assertEquals(expected[i].generatedLine, actual[i].generatedLine);
			assertEquals(expected[i].originalColumn, actual[i].originalColumn);
			assertEquals(expected[i].originalLine, actual[i].originalLine);
			assertEquals(expected[i].source, actual[i].source);
			assertEquals(expected[i].name, actual[i].name);
		}
	}
}
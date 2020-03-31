package;

import sourcemap.SourcePos;
import utest.Test;
import utest.Assert;
import haxe.Resource;
import haxe.Json;

class MappingTest extends Test {
	public function testMapping () {
		var map = new SourceMap(Resource.getString('test.map'));

		var actual = [];
		map.eachMapping(actual.push);
		var expected:Array<SourcePos> = Json.parse(Resource.getString('expected.json'));

		Assert.equals(expected.length, actual.length);
		for (i in 0...expected.length) {
			Assert.equals(expected[i].generatedColumn, actual[i].generatedColumn);
			Assert.equals(expected[i].generatedLine, actual[i].generatedLine);
			Assert.equals(expected[i].originalColumn, actual[i].originalColumn);
			Assert.equals(expected[i].originalLine, actual[i].originalLine);
			Assert.equals(expected[i].source, actual[i].source);
			Assert.equals(expected[i].name, actual[i].name);
		}
	}
}
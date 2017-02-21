package;


class Test {
	static public function main () {
		var stack = [
				{
						file: "/home/alex/temp/hx-php7-test/bin/bug/lib/Bug.php",
						line: 86
				},
				{
						file: "/home/alex/temp/hx-php7-test/bin/bug/lib/Bug.php",
						line: 57
				},
				{
						file: "/home/alex/temp/hx-php7-test/bin/bug/lib/Bug.php",
						line: 60
				}
		];

		var sm = new SourceMap(sys.io.File.getContent('test/test.map'));
		// for (item in stack) {
		// 	var pos = sm.originalPositionFor(item.line);
		// 	trace(pos);
		// }
		sm.eachMapping(function(pos) {
			trace(pos);
		});
	}
}
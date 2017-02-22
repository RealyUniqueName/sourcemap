# Source maps

Cross platform source map parser for Haxe programming language.

## Usage

```haxe
var data : String = "Contents of some .js.map file";
var map = new SourceMap(data);

var pos : sourcemap.SourcePos = map.originalPositionFor(1, 3);
trace(pos);
/*
	Outputs:
	{
		generatedLine:1,
		generatedColumn:3,
		originalColumn:10,
		originalLine:3,
		source:"/path/to/Test.hx",
		name:"methodName"
	}
*/

map.eachMapping(function (pos:sourcemap.SourcePos) {
	trace(pos);
});
```

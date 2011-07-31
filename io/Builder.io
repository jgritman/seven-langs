Builder := Object clone

Builder indent := 0

OperatorTable addAssignOperator(":","atPut")
curlyBrackets := method(
	r := Map clone
	call message arguments foreach(arg,
		r doMessage(arg)
	)
	r
)

Builder forward := method(
	indent repeat (write("  "))
	write("<", call message name)
	firstArg := call message arguments first
	if (firstArg and firstArg name == "curlyBrakcets", attributes := doString(firstArg asString)
		if(attributes type == "Map", attributes asList foreach(pair,write(" ",pair first asMutable removePrefix("\"") removeSuffix("\""),"=\"",pair last,"\"")))) 
	
	writeln(">")
	indent = indent + 1
	call message arguments foreach(
		arg,
		content := self doString(arg asString)
		if(content type == "Sequence", indent repeat(write("  "));writeln(content)))
	indent = indent - 1
	indent repeat (write("  "))
	writeln("</", call message name, ">"))
	
Builder ul({"class": "classy"},
	li(a("test")),
	li("Lua"),
	li("JavaScript")
)
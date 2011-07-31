import scala.io._
import scala.actors._
import Actor._

object PageLoader {
	def getPageSize(url : String) = Source.fromURL(url).mkString.length
	
	def getLinkCount(url : String) = {
		val contents = Source.fromURL(url).mkString
		val reg = """<a\s""".r
		reg.findAllIn(contents).toList.length
	}
}

val urls = List("http://www.amazon.com",
	"http://www.twitter.com",
	"http://www.google.com",
	"http://www.cnn.com")
	
def timeMethod(method: () => Unit) = {
	val start = System.currentTimeMillis()
	method()
	val end = System.currentTimeMillis()
	println("Method took " + (end - start) + " milliseconds.")
}

def getPageSizeConcurrently() = {
	val caller = self
	
	for(url <- urls) {
		actor { caller ! (url, PageLoader.getLinkCount(url))}
	}
	
	for(i <- 1 to urls.size) {
		receive {
			case (url, size) =>
				println("Size for " + url + ": "  + size)
		}
	}
}

timeMethod { getPageSizeConcurrently}
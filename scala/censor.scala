import scala.collection.mutable._
import scala.io.Source

trait Censor {

	val censoredWords = buildWordMap()

	def buildWordMap():Map[String,String] = {
		val map = new HashMap[String,String]
		Source.fromFile("words.txt").getLines.foreach({line =>
			var words = line.split(",")
			map += words(0).trim() -> words(1).trim()
		})
		map
	}

	def censor(input: String):String = {
		censoredWords.foldLeft(input)((retVal, entry) => retVal.replaceAll(entry._1,entry._2))
	}
}

class CensorDude extends Censor

val dude = new CensorDude()
println(dude.censor("Shoot Gosh Darn It"))
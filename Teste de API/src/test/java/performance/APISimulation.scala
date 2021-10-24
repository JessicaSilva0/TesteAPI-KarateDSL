package performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import io.gatling.core.structure.ScenarioBuilder

import scala.concurrent.duration._
import scala.language.postfixOps

class APISimulation extends Simulation {
val getEndedEmissora = scenario("Mensagem de validação da Entidade Emissora").exec(karateFeature("classpath:performance/EntidadeEmissora.feature"))

  setUp(
    getEndedEmissora.inject(rampUsers(20).during (5 seconds))
  )
}

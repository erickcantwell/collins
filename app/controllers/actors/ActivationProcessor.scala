package controllers
package actors

import scala.concurrent.duration._
import play.api.mvc.{AnyContent, Request}
import util.concurrent.BackgroundProcess
import util.plugins.SoftLayer

case class ActivationProcessor(slId: Long, userTimeout: Option[FiniteDuration] = None)(implicit req: Request[AnyContent]) extends BackgroundProcess[Boolean] {
  override def defaultTimeout = 60 seconds
  val timeout = userTimeout.getOrElse(defaultTimeout)

  def run(): Boolean = {
    val plugin = SoftLayer.pluginEnabled.get
    plugin.activateServer(slId)()
  }
}


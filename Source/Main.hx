package;

import openfl.display.Sprite;
import openfl.events.Event;

class Main extends Sprite
{
	private var _telemetry:hxtelemetry.HxTelemetry;
	private var _frameCount:Int = 0;

	public function new()
	{
		super();

		openfl.Telemetry.config.app_name = "hxScoutTest";
		openfl.Telemetry.config.allocations = true;
		addEventListener(Event.ENTER_FRAME, updateTelemetry);
	}

	private function updateTelemetry(e:Event):Void
	{
		_frameCount++;

		trace("frame #" + _frameCount);
		openfl.Telemetry.hxt.advance_frame();
	}
}
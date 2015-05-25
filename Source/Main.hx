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

		var cfg = new hxtelemetry.HxTelemetry.Config();
		//cfg.allocations = true;
		_telemetry = new hxtelemetry.HxTelemetry();
		addEventListener(Event.ENTER_FRAME, updateTelemetry);
	}

	private function updateTelemetry(e:Event):Void
	{
		_frameCount++;

		trace("frame #" + _frameCount);
		_telemetry.advance_frame();
	}
}
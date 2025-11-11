# Common Linux Media Issues (Outline)

1. No audio output
   - Check default sink/output.
   - Check mute state and per-application volume.
   - Ensure audio service (PulseAudio or PipeWire) is running.

2. Video does not play
   - Confirm ffmpeg and at least one capable player are installed.
   - Test with a known good file.

3. Stutter or tearing
   - Verify GPU driver.
   - Check compositor and vsync settings.

Extend each section with distribution-specific commands and examples.

#include <gui/screen1_screen/Screen1View.hpp>

Screen1View::Screen1View()
{

}

void Screen1View::setupScreen()
{
    Screen1ViewBase::setupScreen();
}

void Screen1View::tearDownScreen()
{
    Screen1ViewBase::tearDownScreen();
}

void Screen1View::handleTickEvent()
{
    // -- MCU LOAD -- //
    // This section uses the HAL layer to detect the MCU load and if it is changed the topBar is updated
	volatile uint16_t mcuLoadPct = touchgfx::HAL::getInstance()->getMCULoadPct();
    if (mcuLoadPct != previousMcuLoadPct)
    {
        previousMcuLoadPct = mcuLoadPct;
        Unicode::snprintf(textArea2Buffer, TEXTAREA2_SIZE, "%u", mcuLoadPct);
        textArea2.resizeToCurrentText();
        textArea2.invalidate();
    }
    // -- MCU LOAD -- //

    // -- FPS -- //
    // This section uses the HAL layer to detect the LCD Refresh count and calculates the FPS if it is changed the topBar is updated
    if (HAL::getInstance()->getLCDRefreshCount() > 1)
    {
        frameSkippedCounter++;
    }
    else
    {
        frames++;
    }

    if (frames + frameSkippedCounter >= 60)
    {
        if (fps != frames)
        {
            fps = frames;
            Unicode::snprintf(textArea1Buffer, TEXTAREA1_SIZE, "%d", fps);
            textArea1.resizeToCurrentText();
            textArea1.invalidate();

        }
        frameSkippedCounter = 0;
        frames = 0;
    }
    // -- FPS -- //

	if(n>200)
	{
		n=0;
	}
	for (count = 0; count < 200; count++)
	{
		data[count]=120*(sin(20*3.14*count*0.00125+0.01*n*3.14)+1)/2;
	}

	dynamicGraph1.clear();
	dynamicGraph1.invalidate();

	for (count = 0; count < 200; count++)
	{
		dynamicGraph1.addDataPoint(data[count]);
	}

	n++;

}

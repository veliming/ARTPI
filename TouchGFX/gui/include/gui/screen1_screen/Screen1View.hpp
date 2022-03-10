#ifndef SCREEN1VIEW_HPP
#define SCREEN1VIEW_HPP

#include <gui_generated/screen1_screen/Screen1ViewBase.hpp>
#include <gui/screen1_screen/Screen1Presenter.hpp>
#include <cmath>

class Screen1View : public Screen1ViewBase
{
public:
    Screen1View();
    virtual ~Screen1View() {}
    virtual void setupScreen();
    virtual void tearDownScreen();

    virtual void handleTickEvent();
protected:
    int16_t frameSkippedCounter;
    int16_t frames;
    int16_t fps;
	int16_t count = 0;
	int16_t n = 0;
	int16_t data[800];
	uint16_t previousMcuLoadPct=0;
};

#endif // SCREEN1VIEW_HPP

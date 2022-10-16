package com.stepDefinition;
import java.io.IOException;
import org.junit.After;
import org.junit.Before;
import com.base.BaseClass;

import cucumber.api.Scenario;
public class HookClass extends BaseClass {
	
	@cucumber.api.java.Before
	public void beforeScenario() throws IOException {
		crossBrowser(getpropertyfilevalue("Browsername"));
		urlonly(getpropertyfilevalue("Url"));
	}
	
	@cucumber.api.java.After
	public void afterScenario(Scenario scenario) {
		if(scenario.isFailed())
		{
			scenario.embed(screenshot(), "images/png");
		}
		quitWindows();
	}

}

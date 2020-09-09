package enums;
/**
 * This is a enum to handle Browser Types and their corresponding system properties
 *
 * @author AJAYA RATH
 */
public enum BrowserTypes {
    FIREFOX("webdriver.gecko.driver"),
    CHROME("webdriver.chrome.driver");

    private final String systemProperty;

    BrowserTypes(String systemProperty){
        this.systemProperty = systemProperty;
    }
	public String getSystemProperty() {
        return String.valueOf(this.systemProperty);
    }
}

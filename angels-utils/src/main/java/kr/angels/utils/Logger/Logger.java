package kr.angels.utils.Logger;

import org.apache.logging.log4j.Level;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.core.config.xml.XmlConfigurationFactory;

/**
 * Created by production on 2017-04-07.
 */
public enum Logger {
    INSTANCE;
    private org.apache.logging.log4j.Logger logger;
    private String LOGGER_CONFIG_PATH = Logger.class.getClassLoader().getResource("log4j2.xml").toString();

    Logger()
    {
        System.setProperty(XmlConfigurationFactory.CONFIGURATION_FILE_PROPERTY,LOGGER_CONFIG_PATH);
        logger = LogManager.getLogger("logger");
    }

    public void log(String level, String message)
    {
        logger.log(Level.toLevel(level), message);
    }

    public org.apache.logging.log4j.Logger getLogger() {
        return LogManager.getLogger();
    }

    public org.apache.logging.log4j.Logger getLogger(String name) {
        return LogManager.getLogger(name);
    }

    public static Logger getInstance() {
        return INSTANCE;
    }
}

package kr.angels.utils.database;

import org.apache.commons.configuration2.Configuration;
import org.apache.commons.configuration2.FileBasedConfiguration;
import org.apache.commons.configuration2.XMLConfiguration;
import org.apache.commons.configuration2.builder.FileBasedConfigurationBuilder;
import org.apache.commons.configuration2.builder.fluent.Parameters;
import org.apache.commons.configuration2.ex.ConfigurationException;

import java.io.File;

/**
 * Created by production on 2017-04-06.
 */
public enum SecureConfig {
    INSTANCE;
    private Configuration config;
    private String CONFIG_FILENAME = "SecureConfig.xml";
    private String CONFIG_PATH = SecureConfig.class.getClassLoader().getResource("conf").getPath()+"/" + CONFIG_FILENAME;

    SecureConfig() {
        Parameters params = new Parameters();
        File xmlFile = new File(CONFIG_PATH);

        FileBasedConfigurationBuilder<FileBasedConfiguration> builder =
                new FileBasedConfigurationBuilder<FileBasedConfiguration>(XMLConfiguration.class)
                .configure(params.fileBased().setFile(xmlFile));

        try {
            config = builder.getConfiguration();
        } catch (ConfigurationException e) {
            e.printStackTrace();
        }
    }

    public String getString(String key)
    {
        return config.getString(key);
    }

    public int getInt(String key)
    {
        return config.getInt(key);
    }

    public static SecureConfig getInstance()
    {
        return INSTANCE;
    }
}
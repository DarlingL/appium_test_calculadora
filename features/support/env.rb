require "appium_lib"
require "pry"

def caps
  { caps: { deviceName: 'Android Emulator',
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "calculadora.apk")),
            appPackage: 'com.example.viniciustenorio.minhacalculadora',
            appActivity: 'com.example.viniciustenorio.minhacalculadora.MainActivity',
            newCommandTimeout: "3600",
            
  }
  }
end

Appium::Driver.new(caps,true)
Appium.promote_appium_methods Object
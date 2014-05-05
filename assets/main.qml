/*
 * Copyright (c) 2014 Simon HSU @ Taiwan BlackBerry Developer Group
 * Any question, please email to bsebadmin@gmail.com
 */

import bb.cascades 1.0

Page {
    Container {
        //Todo: fill me with QML
        Label {
            // Localized text with the dynamic translation and locale updates support
            text: qsTr("AppSetting Test") + Retranslate.onLocaleOrLanguageChanged
            textStyle.base: SystemDefaults.TextStyles.BigText
        }
        ToggleButton {
            id: toggle
            checked: false;
            onCheckedChanged: {
               console.log(checked); 
               _app.setValue("saveParameter",checked+"");
            }
        }
    }
    onCreationCompleted: {
        var savedValue = _app.getValue("saveParameter");
        console.log("check saved data : "+savedValue);
        if (savedValue == "false")
        {
            toggle.checked = false;
        }
        else {
            toggle.checked = true;
        }
    }
}

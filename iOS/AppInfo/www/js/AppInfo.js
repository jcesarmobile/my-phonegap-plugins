window.AppInfo = function( callback, errCallback) {
    cordova.exec(callback, errCallback, "AppInfo", "getInfo",[]);
};
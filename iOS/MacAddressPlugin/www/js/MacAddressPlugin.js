window.MacAddressPlugin = function( callback, errCallbac) {
    cordova.exec(callback, errCallbac, "MacAddressPlugin", "getMacAddress",[]);
};
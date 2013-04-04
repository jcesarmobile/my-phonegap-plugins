window.NetworkInterfacesPlugin = function( callback, errCallbac) {
    cordova.exec(callback, errCallbac, "NetworkInterfacesPlugin", "getNetworkInterfaces",[]);
};
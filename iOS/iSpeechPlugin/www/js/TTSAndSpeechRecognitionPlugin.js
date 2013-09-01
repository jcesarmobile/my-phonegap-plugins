(function(window) {
    var TTSPlugin = function() {

    }
  
    TTSPlugin.prototype = {
        speak: function(callback, errCallbac, message) {
            cordova.exec(callback, errCallbac, "TTSAndSpeechRecognitionPlugin", "speak",[message]);
        },
        recognize: function (callback, errCallbac) {
            cordova.exec(callback, errCallbac, "TTSAndSpeechRecognitionPlugin", "recognize",[]);
        }
    };
  
    cordova.addConstructor(function() {
        window.TTSPlugin = new TTSPlugin();
    });

})(window);


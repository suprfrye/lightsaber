var calculator = {add: function(x, y) {
                    return (x + y);
                  },
                  subtract: function(x, y) {
                    return (x - y);
                  },
                  multiply: function(x, y) {
                    return (x * y);
                  },
                  divide: function(x, y) {
                    return (x / y);
                  }
};

var errorModule = {

  show: function(el) {
    el.style.visibility="visible";
  },
  hide: function(el) {
    el.style.visibility="visible";
  },
  change: function() {

  }


};

var showHide = function() {
  var el = document.getElementById("error");

  if(el.style.visibility === 'visible') {
    errorModule.hide(el);
  } else {
    errorModule.show(el);
  }
}


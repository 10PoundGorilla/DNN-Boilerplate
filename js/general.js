/*---------------
CUSTOM SCRIPTS
--------------*/

// On Page Ready
$(document).ready(function() {
  site.init();


  // Bootstrap Multi-level Toggle
  $("#navbarNav .dropdown-toggle").on("click", function(e) {
    var el = $(this);
    var parent = el.closest(".nav-item");
    el.next("ul").slideToggle();
    el.toggleClass("dropdown-toggle--open");
    parent
      .siblings()
      .find(".dropdown-toggle")
      .removeClass("dropdown-toggle--open")
      .next("ul")
      .slideUp();
    e.stopPropagation();
    e.preventDefault();
  });

});


// On Page Resize
$(window).resize(function(){

});


// On Page Ready
var site = {
  init: function init() {
    this.loadEvents();
  },

  rgbToHex: function(rgb) {
    if (/^#[0-9A-F]{6}$/i.test(rgb)) return rgb;
    rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    function hex(x) {
      return ("0" + parseInt(x).toString(16)).slice(-2);
    }
    return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
  },
  styleGuideEvents: function() {
    $(".branding-guidelines .section-heading").on("click", function() {
      var $el, $parent, $content;
      $el = $(this);
      $parent = $el.closest(".section");
      $content = $parent.find(".section-content");
      $el.toggleClass("active");
      $content.slideToggle(300);
      $parent
        .toggleClass("active")
        .siblings()
        .removeClass("active")
        .find(".section-heading")
        .removeClass("active")
        .closest(".section")
        .find(".section-content")
        .slideUp(300);
    });

    $(".swatch").each(function() {
      var el = $(this);
      // Get Background Color of Swatch
      var color = el.find(".swatch-block").css("backgroundColor");
      // Convert RGB to Hex
      var hex = site.rgbToHex(color);
      // Add Hex to Header
      el.find("span.color").text(hex);
    });

    $(".type").each(function() {
      var el,
        text,
        size,
        weight,
        color,
        sizeLabel,
        weightLabel,
        colorLabel,
        colorCode;
      el = $(this);
      text = el.find(".type-text");
      // Get Text Styles
      size = text.css("fontSize");
      weight = text.css("fontWeight");
      colorCode = text.css("color");
      // Assign container elements to variables
      sizeLabel = el.find(".font-size");
      weightLabel = el.find(".font-weight");
      colorLabel = el.find(".font-color");
      // Convert RGB to Hex
      colorCode = site.rgbToHex(colorCode);
      // Find Label according to Color
      color = $(".color-palette")
        .find('span.color:contains("' + colorCode + '")')
        .closest(".style-heading")
        .find(".label")
        .text();
      // Convert Font Weights to Description
      switch (true) {
        case weight < 400:
          weight = "Light";
          break;
        case weight > 399 && weight < 500:
          weight = "Normal";
          break;
        case weight > 499 && weight < 600:
          weight = "Medium";
          break;
        case weight > 599 && weight < 700:
          weight = "Semi-bold";
          break;
        case weight > 699 && weight < 900:
          weight = "Bold";
          break;
        case weight > 899:
          weight = "Heavy";
          break;
      }
      // Append Values to Heading
      size !== "" ? sizeLabel.text(size + " / ") : sizeLabel.text("");
      weight !== "" ? weightLabel.text(weight + " / ") : weightLabel.text("");
      color !== "" ? colorLabel.text(color + " Color") : colorLabel.text("");
    });
  },
  resizeEvents: function() {
    $(window).resize(function() {});
  },
  loadEvents: function() {
    site.styleGuideEvents();
  }
};

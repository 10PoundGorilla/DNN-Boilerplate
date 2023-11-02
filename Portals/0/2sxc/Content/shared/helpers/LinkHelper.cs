using System.Collections.Generic;
using System.Dynamic;
using System.IO;
using ToSic.Razor.Blade;

public class LinkHelper: Custom.Hybrid.Code12
{
  // Process Link entity and pass relevant properties to the actual method
  public dynamic LinkInfo(dynamic item) {
    return LinkInfo(item.URL, item.Target);
  }
  
  // check a link, prepare target window, icon etc. based on various settings
  public dynamic LinkInfo(string link, string window) {
    var found = Text.Has(link);

    if(found) {
      // try to find out if it's a local link
      bool isInternal = link.Contains(Link.To())
        || link.StartsWith("/") // absolute link in same site
        || link.StartsWith("#") // hash-link on same page
        || link.StartsWith("."); // relative link from this page

      // optionally auto-detect the window
      if(string.IsNullOrEmpty(window) || window == "auto")
        window = (isInternal) ? "_self" : "_blank";
    }

    // Return a dynamic object with these properties.
    // It must be dynamic, otherwise the other page cannot use it
    return AsDynamic(new {
      Found = found,
      Window = window
    });
  }
}
### Director.js

A dinky template plugin for `$` (either jQuery or Zepto with the `data` module) and `_` (either Underscore or Lo-Dash). Director.js lets your define dynamic decorator functions as objects in a declarative `data-direct` attribute. It was created out of necessity for a reusable pattern for sprucing up liberally cached templates.

#### Quick Example

``` html
<div id="menu" data-direct='{"find":"#dashboard a","css":{"color": "red"}}'>
  <ul>
    <li id="dashboard"><a href="#">Dashboard</a></li>
    <li id="timeline"><a href="#">Timeline</a></li>
    <li id="profile"><a href="#">Profile</a></li>
  </ul>
</div>
```

When you call `director.direct()` the following JavaScript will get automatically executed:

``` coffeescript
$("#menu").find("#dashboard a").css({color: "red"})
```

Check the [blog post](http://blog.waymondo.com/2014-02-23-director-dot-js-dynamic-template-decorating-from-declarative-attributes) and [example.html](https://github.com/waymondo/director/blob/master/example.html) for more info and examples.

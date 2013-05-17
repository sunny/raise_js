# RaiseJs

Raise JavaScript errors as Ruby exceptions in your Rails app.

## Install

Add this line to your `Gemfile`:

```rb
gem "raise_js", github: "sunny/raise_js"
```

And add `raise_js` to your `Gemfile` along with `jquery` and `jquery_ujs`:

```js
//= require raise_js
//= require jquery
//= require jquery_ujs
```

## Catching

Use a gem like [exception_notification][] to send you an email whenever Rails raises exceptions.

If you want to catch it manually, you can catch `RaiseJs::JavaScriptError`.

[exception_notification]: https://github.com/smartinez87/exception_notification
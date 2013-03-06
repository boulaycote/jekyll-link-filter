Jekyll-link-filer
---
Generates link based on filename and site URL.

## Use
<code>{{ assets/style.css | link }}</code>

file extension is not required.
<code>{{ assets/style | link }}</code>
works too.

Add <code>url: http://your.site.url</code> to _config.yml.
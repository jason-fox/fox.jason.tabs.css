<h1>Usage</h1>

An HTML tabbed box is defined using a `<bodydiv>` element with an `outputclass=tabs`. The default size is 400px high. Three other sizes are defined:

-   `small` - 200px
-   `medium` - 600px
-   `large` - 1000px

For each tab, just place a `<section>` element with a `<title>` within the `<bodydiv>` as shown:

```xml
<bodydiv outputclass="tabs small">
  <section>
    <title>Title goes here</title>
    <p>Body text goes here</p>
  </section>
  ... etc
</bodydiv>
```


When running an HTML based transform, the section will be transformed into a tabbed dialog. e.g.:

```bash
PATH_TO_DITA_OT/bin/dita -f html5 -o out -i document.ditamap
```

To alter the CSS, amend the `resource/tabs.css` file which is copied over as part of the DITA processing.

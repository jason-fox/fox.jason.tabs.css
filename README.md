# HTML Tab Plugin for DITA-OT [<img src="https://jason-fox.github.io/fox.jason.tabs.css/tabs.png" align="right" width="300">](http://tabsdita-ot.rtfd.io/)

[![license](https://img.shields.io/github/license/jason-fox/fox.jason.tabs.css.svg)](http://www.apache.org/licenses/LICENSE-2.0)
[![DITA-OT 3.7](https://img.shields.io/badge/DITA--OT-3.7-blue.svg)](http://www.dita-ot.org/3.7)
[![CI](https://github.com/jason-fox/fox.jason.tabs.css/workflows/CI/badge.svg)](https://github.com/jason-fox/fox.jason.tabs.css/actions?query=workflow%3ACI)
[![Coverage Status](https://coveralls.io/repos/github/jason-fox/fox.jason.tabs.css/badge.svg?branch=master)](https://coveralls.io/github/jason-fox/fox.jason.tabs.css?branch=master)
[![Documentation Status](https://readthedocs.org/projects/tabsdita-ot/badge/?version=latest)](https://tabsdita-ot.readthedocs.io/en/latest/?badge=latest)

This is a [DITA-OT Plug-in](https://www.dita-ot.org/plugins) used to create CSS-only tabbed dialog within DITA HTML output.

<details>
<summary><strong>Table of Contents</strong></summary>

-   [Background](#background)
-   [Install](#install)
    -   [Installing DITA-OT](#installing-dita-ot)
    -   [Installing the Plug-in](#installing-the-plug-in)
-   [Usage](#usage)
-   [License](#license)

</details>


#### Sample DITA Input

```xml
<bodydiv outputclass="tabs small">
  <section>
    <title>Lorem ipsum</title>
    <p>
      Lorem ipsum dolor sit amet consectetur adipiscing, elit malesuada ligula vehicula netus sollicitudin sociis, feugiat scelerisque luctus parturient pharetra.
    </p>
    <p>
       Dis pretium ante fringilla nunc velit nisi risus primis felis vel, venenatis auctor nascetur viverra non sagittis habitant condimentum integer. Himenaeos iaculis placerat neque nisl sodales faucibus ut porttitor maecenas et quam posuere mauris, venenatis tortor scelerisque suspendisse magna malesuada rhoncus commodo feugiat pretium urna just
     </p>
  </section>
  <section>
    <title>Dolor sit amet</title>
    <p>
      Class ornare feugiat arcu parturient lacus mollis purus at, primis turpis morbi libero ultricies hendrerit. Volutpat sed ullamcorper bibendum mi sagittis ultricies ridiculus sociis nam, dapibus proin curae odio lacus est dignissim ad, commodo ornare nec phasellus condimentum laoreet vehicula porttitor.
    </p>
    <p>
      Himenaeos nunc aptent massa ridiculus auctor nisi pellentesque maecenas a eleifend, fermentum fringilla semper nam viverra vivamus velit metus in posuere, conubia tellus venenatis rutrum proin erat enim mi libero.</p>
  </section>
</bodydiv>
```

#### Sample DITA Output

> ![](https://jason-fox.github.io/fox.jason.tabs.css/tabbed.png)

## Install

The DITA-OT CSS Tabs Plug-in has been tested against [DITA-OT 3.x](http://www.dita-ot.org/download). It is recommended
that you upgrade to the latest version.

### Installing DITA-OT

<a href="https://www.dita-ot.org"><img src="https://www.dita-ot.org/images/dita-ot-logo.svg" align="right" height="55"></a>

The DITA-OT CSS Tabs Plug-in is a file reader for the DITA Open Toolkit.

-   Full installation instructions for downloading DITA-OT can be found
    [here](https://www.dita-ot.org/3.7/topics/installing-client.html).

    1.  Download the `dita-ot-3.7.zip` package from the project website at
        [dita-ot.org/download](https://www.dita-ot.org/download)
    2.  Extract the contents of the package to the directory where you want to install DITA-OT.
    3.  **Optional**: Add the absolute path for the `bin` directory to the _PATH_ system variable.

    This defines the necessary environment variable to run the `dita` command from the command line.

```console
curl -LO https://github.com/dita-ot/dita-ot/releases/download/3.7/dita-ot-3.7.zip
unzip -q dita-ot-3.7.zip
rm dita-ot-3.7.zip
```

### Installing the Plug-in

-   Run the plug-in installation commands:

```console
dita install https://github.com/jason-fox/fox.jason.extend.css/archive/master.zip
dita install https://github.com/jason-fox/fox.jason.tabs.css/archive/master.zip
```

The `dita` command line tool requires no additional configuration.

---


## Usage

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

```console
PATH_TO_DITA_OT/bin/dita -f html5 -o out -i document.ditamap
```

To alter the CSS, amend the `resource/tabs.css` file which is copied over as part of the DITA processing.


## License

[Apache 2.0](LICENSE) © 2021 Jason Fox

# BoldifyIcon

**BoldifyIcon** is a drop-in replacement for Flutter’s built-in [Icon] widget,  
with one key extra feature: **`fontWeight`** — allowing you to make **any font-based icon bold**.

If you’ve ever wanted your icons to match bold text, stand out more in the UI,  
or simply have a stronger visual presence, **BoldifyIcon** makes it easy.

---

<p align="center">
  <img src="https://raw.githubusercontent.com/mokaily/boldify_icon/main/example/images/img.png" width="600"/>
</p>

## ✨ Key Feature

- **`fontWeight`** – Set a heavier font weight to make the icon look bold.  
  Works with any font-based icon, including Flutter’s default Material icons and variable fonts.  
  Example:
    - `FontWeight.normal` → standard stroke thickness.
    - `FontWeight.bold` or `FontWeight.w900` → bold, strong-looking icons.

---

## 📦 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  boldify_icon: 
```

## 🔧 Parameters

**BoldifyIcon** accepts all the same parameters as Flutter’s built-in [`Icon`](https://api.flutter.dev/flutter/widgets/Icon-class.html) widget,  
**plus the new 🚀 `fontWeight` property** for controlling icon boldness.

| Parameter         | Type              | Description                                                                 |
|-------------------|-------------------|-----------------------------------------------------------------------------|
| `icon`            | `IconData?`       | The icon to display.                                                        |
| `size`            | `double?`         | The size of the icon in logical pixels.                                     |
| **`fontWeight` 🔥** | `FontWeight?`     | **✨ Extra parameter** — controls stroke thickness; heavier values make the icon **bold**. |
| `fill`            | `double?`         | For variable fonts: 0.0 = outline, 1.0 = filled.                            |
| `weight`          | `double?`         | Variable font stroke weight.                                                |
| `grade`           | `double?`         | Fine-tunes stroke thickness for variable fonts.                             |
| `opticalSize`     | `double?`         | Optical size adjustment for variable fonts.                                 |
| `color`           | `Color?`          | Icon color.                                                                 |
| `shadows`         | `List<Shadow>?`   | Shadows behind the icon.                                                    |
| `blendMode`       | `BlendMode?`      | Blend mode for custom rendering effects.                                    |
| `semanticLabel`   | `String?`         | Screen reader label.                                                        |
| `textDirection`   | `TextDirection?`  | Text direction (LTR or RTL).                                                |
| `applyTextScaling`| `bool?`           | Scale icon with text size.                                                  |


## 💡 Why use BoldifyIcon instead of Icon?

With Flutter’s default [Icon] widget, **you can’t change the font weight** —  
all icons render at the font’s default stroke thickness.

**BoldifyIcon** unlocks that control, letting you:

- **Match icons with bold text** for visual harmony in your UI.
- **Increase icon visibility** for better accessibility and emphasis.
- **Create a stronger, bolder look** without replacing assets or using custom icon sets.


## Donations

We need your support. Projects like this can not be successful without support from the community. If you find this project useful, and would like to support further development and ongoing maintenance, please consider donating.

<p align="center">
  <a href="https://www.paypal.com/donate/?hosted_button_id=9PCKHLMEQJUS4" target="_blank">
    <img src="https://raw.githubusercontent.com/aha999/DonateButtons/master/Paypal.png" width=300 />
  </a>
</p>

<p align="center">
<a href="https://www.buymeacoffee.com/mokaily" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" width=300  alt="Buy Me A Coffee" ></a>
</p>



## Sponsors
Want to become a sponsor? [[Become a Sponsor](https://github.com/sponsors/mokaily)]
<p align="center">
<a href="https://github.com/sponsors/mokaily" target="_blank">
  <img src="https://img.shields.io/badge/Sponsor%20me%20on-GitHub-24292f?logo=githubsponsors&logoColor=white&style=for-the-badge" width="300" alt="Sponsor me on GitHub">
</a>
</p>


###
###
###
######
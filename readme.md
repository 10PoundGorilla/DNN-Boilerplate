# Welcome to the 10 Pound Gorilla Boilerplate

This boilerplate is built utilizing Bootstrap and contains the scaffolding needed to quickly build out new themes/skins in DNN. We also include the scaffolding and starter code for working with modules like EasyDnnNews, and 2sxc.

# Scaffolding Overview


# SCSS Compilation
Dart SASS supports compiling many-to-many CSS. With a single command you can kick-off a monitor to check for changes to scss files and recompile code.

You can [read about the many-to-many compilation process on the SASS Lang website](https://sass-lang.com/documentation/cli/dart-sass/#many-to-many-mode).

## Example implementation:

### [Video Guide](https://www.loom.com/share/b8389e8df66e4db49a0280dea99ea6f6?sid=fbc3d750-446a-4b37-8ad0-ebebd1676d5f)

For this example and ease of reading, I broke out the command into multiple lines. To run this, you will need to convert it to one string. 
- Like a normal sass-watch you specify you source .scss file, and your output file.
- To watch and compile many different files, simply add them as needed.

```
sass --watch 
Portals/_default/Skins/boilerplate/css/skin.scss:Portals/_default/Skins/boilerplate/css/skin.css 
Portals/0/2sxc/Content/assets/css/styles.scss:Portals/0/2sxc/Content/dist/styles.min.css 
--style compressed
```
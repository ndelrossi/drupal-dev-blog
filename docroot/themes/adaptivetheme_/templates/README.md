# Templates

Drupal core template overrides. By default all sub-themes are generated with page.html.twig.

If you select the option to include templates when generating a sub-theme the templates in this directory are copied and placed in your sub-themes templates directory.

If you manually create a sub-theme you can pick and choose which templates you want to copy and modify.

---

## Developing with Twig

Please see your sites services.yml file, there are three important settings you can modify to aid in twig template editing:

  debug: false
  auto_reload: null
  cache: true

The final two of these are most useful when making a lot of changes to templates - normally changes will not show until you clear the sites cache.

---

## Included Template Overrides and Suggestions

Adaptivetheme includes a bunch of template overrides and suggestions to make theming a bit easiser.

This is a list of changes made compared to Drupal core (may not be complete list of changes, you should double check):

### html.html.twig
* Splits out `{{ attributes.class }}` so you can add classes without using preprocess functions.
* Standard sub-themes
  * The normal sidebar layout classes are removed from the `<body>`elements `{{ attributes.class }}`.

### region.html.twig
* Splits out `{{ attributes.class }}` so you can add classes without using preprocess functions.
* Standard based sub-themes
  * When the Layout extension is active a separator element is added to aid clearing in complex layouts.

### block.twig.html
* Uses `<section>` element not `<div>`.
* Removes the content wrapper (core may do this also).
* Splits out `{{ attributes.id }}` and `{{ attributes.class }}`, so you can add classes without using preprocess functions.

### block--menu.html.twig
* Uses `<nav>` element not `<div>`.
* Otherwise the same changes as for block.html.twig.
* Note: this suggestion is used by all core menu blocks, including system menus, @SEE at_core_preprocess_block()

### block--system-main-block.html.twig
* Uses `<div>` wrapper, does not make sense branch the outline for this block.
* Removes the title, system main never has a title.
* Otherwise the same changes as for block.html.twig.

### node.html.twig
* Moves submitted information to the bottom of the node
* Removes Drupal core `{{ submitted }}` variable in favor of twig logic in the template, this makes it much easier for themers to access and change.
* Uses AT Cores `{{ datetime }}` variable to wrap the submitted date in a `<time>` element.
* Removes the content wrapper `<div>`.

### comment.html.twig
* Removes Drupal core `{{ submitted }}` variable in favor of twig logic in the template, this makes it much easier for themers to access and change.
* Uses AT Cores `{{ datetime }}` variable to wrap the submitted date in a `<time>` element.
* Removes the content wrapper div.

### field.html.twig
* Uses `<h3>` for field labels.
* Splits out `{{ attributes.class }}`, so you can add classes without using preprocess functions.

### field--taxonomy-term-reference.html.twig
* Uses `<ul>` for the items wrapper and `<li>` for each item wrapper.
* Otherwise the same as field.html.twig.

---

## Find and copy all Drupal core templates

If you want a quick way to find all Drupal core templates you can run this unix command in the terminal, this assumes you have created a direcory called "core" inside your sub-themes templates directory and that you are running the command from the Drupal root.

This will copy all templates to your templates/core directory, modify the command if you are not running this from Drupal root:

find . -name '*twig' -exec cp {} ./templates/core  \;

Once you have all the core templates you can drag the ones you want to edit into the main templates direcory - so you always know which ones have been modified. Before you go live with your theme you can safely delete all templates in the /core/ sub-directory and clear the site cache.


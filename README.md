templating
==========

template generator using ERB


##Usage
```bash
# basic
$ erb -T - bindings/binding.erb templates/template.erb > results/result.text

# with Rails ActiveSupport support
erb -r 'active_support/core_ext/string' -T - bindings/kit_chase_product.erb templates/top_level_index.html.erb.erb > results/result.html.erb
```

templating
==========

template generator using ERB


##Usage
```bash
# basic
$ erb -T - bindings/binding.erb templates/template.erb > results/result.text

# with Rails ActiveSupport support
$ erb -r 'active_support/core_ext/string' -T - bindings/kit_base_item.erb templates/parent/index.html.erb.erb > results/result.html.erb

# with runner
$ bash ./runner.sh kit_chase_item parent /destination/path/
```
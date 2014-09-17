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


##How it works
1. translate binding into template-friendly middleware
2. generate results from template with middleware

##Middleware explaination
||underscore|camelize|capitalize|pluralize|
|---|---|---|---|---|
|binding|item_type|ItemType|Item_type|item_types|
|middleware|a|A|A_|as|
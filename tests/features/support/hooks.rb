# frozen_string_literal: true

After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/', '_')

  if scenario.failed?
    tirar_print(scenario_name.downcase!, 'Failed')
  else
    tirar_print(scenario_name.downcase!, 'Pass')
  end
end

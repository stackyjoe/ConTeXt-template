require("ipa_chart")

function comma_separated_string_to_sorted_list(list)
	arr = utilities.parsers.settings_to_array(list)
	sorted = {}
	
	i=1
	for key, entry in pairs(arr) do
    		sorted[i]= entry
		i = i+1
	end

	table.sort(sorted)

	return sorted
end

function parse_and_insert_description(raw_description, representation, starting_node) 
	sorted = comma_separated_string_to_sorted_list(raw_description)

	location_in_tree = starting_node

	for i=1,#(sorted) do
		if location_in_tree[sorted[i]] == nil then
			location_in_tree[sorted[i]] = {label=sorted[i]}
		end

		location_in_tree = location_in_tree[sorted[i]]
	end

	location_in_tree.representation = representation
	--print("Representation is: ", representation)
end

function parse_and_look_up_description(raw_description, starting_node)
	sorted = comma_separated_string_to_sorted_list(raw_description)

	location_in_tree = starting_node

	for i=1, #(sorted) do
		if location_in_tree[sorted[i]] ~= nil then
			location_in_tree = location_in_tree[sorted[i]]
		else
			return ''
		end

	end

	--print(location_in_tree.representation)
	return location_in_tree.representation
end

function template_ipa_module_lookup(category, description)
	if category == "vowel" then
		representation = parse_and_look_up_description(description, ipa.vowels)

		if representation ~= nil and representation ~= '' then
			tex.sprint(representation)
		else
			print("Failed lookup: ", description)
		end

	elseif category == "consonant" then
		representation = parse_and_look_up_description(description, ipa.consonants)

		if representation ~= nil and representation ~= '' then
			tex.sprint(representation)
		else
			print("Failed lookup: ", description)
		end
	elseif category == "combining" then
		representation = parse_and_look_up_description(description, ipa.combining)

		if representation ~= nil and representation ~= '' then
			tex.sprint(representation)
		else
			print("Failed lookup: ", description)
		end
	end
end

function template_ipa_module_initialize()

	for index, pair in pairs(vowel_pairs) do
		--print(pair[1] , " " , pair[2])
		desc = pair[1]
		rep = pair[2]
		
		parse_and_insert_description(desc, rep, ipa.vowels)
	end

	for index, pair in pairs(consonant_pairs) do
		desc = pair[1]
		rep = pair[2]

		parse_and_insert_description(desc, rep, ipa.consonants)
	end

	for index, pair in pairs(combining) do
		desc = pair[1]
		rep = pair[2]

		parse_and_insert_description(desc, rep, ipa.combining)
	end
end


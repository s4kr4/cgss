$ ->
	$('.search').on('keyup', ->
		if !$(this).val()
			$('#card_list tbody tr').show()
		else
			$('#card_list tbody tr').hide()
			switch this.id
				when "card_number"
					$('.col_number:contains(' + this.value + ')').parent().show()
				when "card_name"
					$('.col_name:contains(' + this.value + ')').parent().show()
				when "card_rarity"
					$('.col_rarity:contains(' + this.value + ')').parent().show()
	).keyup()

$ ->
	$('#card_attr').on('change', ->
		if $('#card_attr option:selected').val() is "None"
			$('#card_list tbody tr').show()
		else
			$('#card_list tbody tr').hide()
			$('.col_attr:contains(' + $('#card_attr option:selected').text() + ')').parent().show()
	).change()

$ ->
	$('#card_rarity').on('change', ->
		if $('#card_rarity option:selected').val() is "None"
			$('#card_list tbody tr').show()
		else
			$('#card_list tbody tr').hide()
			$('.col_rarity:contains(' + $('#card_rarity option:selected').text() + ')').parent().show()
	).change()


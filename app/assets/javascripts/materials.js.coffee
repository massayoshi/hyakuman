jQuery ->
  loaded_material = $('#material_productline_id :selected').text()
  productlines = $('#material_productline_id').html()
  $('#material_productline_id').parent().hide()
  if loaded_material.length != 0
   manufacturer = $('#material_manufacturer_id :selected').text()
   escaped_manufacturer = manufacturer.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
   options = $(productlines).filter("optgroup[label=#{escaped_manufacturer}]").html()
   $('#material_productline_id').html(options)
   $('#material_productline_id').parent().show()
  console.log(productlines)
  $('#material_manufacturer_id').change ->
    manufacturer = $('#material_manufacturer_id :selected').text()
    escaped_manufacturer = manufacturer.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(productlines).filter("optgroup[label=#{escaped_manufacturer}]").html()
    console.log(options)
    if options
      $('#material_productline_id').html(options)
      $('#material_productline_id').parent().show()
    else
      $('#material_productline_id').empty()
      $('#material_productline_id').parent().hide()
	<form id="xfilter_trigger">
				<input type="hidden" name="filtertype" value="hotel" /> <label>{lang('Price','cybergroup')}</label>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<input name="field_price_single" class="min-price form-control input-style1" type="number" min="0" max="9999" value="1" placeholder="{lang('from','cybergroup')}" />
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<input name="field_price_single" class="max-price form-control input-style1" type="number" min="0" max="9999" value="1500" placeholder="{lang('to','cybergroup')}" />
						</div>
					</div>
				</div>
				<div class="form-group">
					<label>{lang('City','cybergroup')}</label> <select class="form-control input-style1" name="category" id="city">
						<option value="">{lang('All','cybergroup')}</option> {foreach get_sub_categories(62) as $cat}
						<option value="{$cat.id}">{$cat.name}</option> {/foreach}
					</select>
				</div>
				<div class="form-group">
					<label>{lang('Stars','cybergroup')}</label>
					<div class="input-group">
						<label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox4" value="0" name="field_stars"> B&B
						</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox1" value="1" name="field_stars"> <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2" value="2" name="field_stars"> <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</label> <label class="checkbox-inline"> <input type="checkbox" id="inlineCheckbox2" value="3" name="field_stars"> <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i>
						</label>
					</div>
				</div>
				<div class="form-group">
					<label>{lang('Distance to city center','cybergroup')}, km</label>
					<div class="input-group">
						 
					</div>
				</div>
				<div class="form-group">
					<label>{lang('Hotel features','cybergroup')}</label>
					
					<div class="checkbox">
					<label> 
							<input type="checkbox" name="field_hotelfeauters" value="0"> <i class="flat flaticon-bassein" title=""></i> {lang('Бассейн','cybegroup')}
					</label>
					</div>
					 
					 
				</div> 
				<div class="form-group filter-buttons">
					<button class="btn btn-primary">
						<i class="fa fa-filter"></i> Filter
					</button>
					<a href="#">Reset</a>
				</div>
			</form>
			
			<script>
			{literal}
			
			
///SearchFields

$(document).on('submit','#xfilter_trigger',function(e) {
	e.preventDefault();
	$info = $(this).serialize(); 
 
	
	
	console.log($info);
 	location.href="/xf/pages/"+$info.replace(new RegExp("&",'g'),"/");
	
 
});

////SearchFields
			
			{/literal}
			</script>

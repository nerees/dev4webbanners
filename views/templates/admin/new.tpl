{*
* @author	Dev4Web
* 
* @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}

<div class="new-item">
	<div class="form-group">
		<button type="button" class="btn btn-default btn-lg button-new-item"><i class="icon-plus-sign"></i> {l s='Add item' mod='dev4webbanners'}</button>
	</div>
	<div class="item-container">
		<form method="post" action="{$htmlitems.postAction|escape:'htmlall':'UTF-8'}" enctype="multipart/form-data" class="item-form defaultForm  form-horizontal">
			<div class="well">
				<div class="language item-field form-group">
					<label class="control-label col-lg-3">{l s='Language' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
							<span id="selected-language">
							{foreach from=$htmlitems.lang.all item=lang}
								{if $lang.id_lang == $htmlitems.lang.default.id_lang} {$lang.iso_code|escape:'htmlall':'UTF-8'}{/if}
							{/foreach}
							</span>
							<span class="caret">&nbsp;</span>
						</button>
						<ul class="languages dropdown-menu">
							{foreach from=$htmlitems.lang.all item=lang}
								<li id="lang-{$lang.id_lang|escape:'htmlall':'UTF-8'}" class="new-lang-flag"><a href="javascript:setLanguage({$lang.id_lang|escape:'htmlall':'UTF-8'}, '{$lang.iso_code|escape:'htmlall':'UTF-8'}');">{$lang.name|escape:'htmlall':'UTF-8'}</a></li>
							{/foreach}
						</ul>
						<input type="hidden" id="lang-id" name="id_lang" value="{$htmlitems.lang.default.id_lang|escape:'htmlall':'UTF-8'}" />
					</div>
				</div>
				<div class="title item-field form-group">
					<label class="control-label col-lg-3 ">{l s='Image title' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<input class="form-control" type="text" name="item_title"/>
					</div>
				</div>
				<div class="title_use item-field form-group">
					<div class="col-lg-9 col-lg-offset-3">
						<div class="checkbox">
							<label class="control-label">
								{l s='Use title in front' mod='dev4webbanners'}
								<input type="checkbox" name="item_title_use" value="1" />
							</label>
						</div>
					</div>
				</div>
				<div class="hook item-field form-group">
					<label class="control-label col-lg-3">{l s='Hook' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<select class="form-control fixed-width-lg" name="item_hook" default="top">
							<option value="top">top</option>
							<option value="bottom">bottom</option>  
							<option value="home">home</option>  
							<option value="left">left</option>
							<option value="right">right</option>
							<option value="footer">footer</option>
							<option value="product">product</option>
							<option value="product_footer">product_footer</option>
						</select>
					</div>
				</div>
				<div class="image item-field form-group">
					<label class="control-label col-lg-3">{l s='Image' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<input type="file" name="item_img" />
					</div>
				</div>
				<div class="image_w item-field form-group">

					<label class="control-label col-lg-3">{l s='Image width' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<div class="input-group fixed-width-lg">
							<span class="input-group-addon">{l s='px' mod='dev4webbanners'}</span>
							<input name="item_img_w" type="text" maxlength="4"/>
						</div>
					</div>
				</div>
				<div class="image_h item-field form-group">
					<label class="control-label col-lg-3">{l s='Image height' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<div class="input-group fixed-width-lg">
							<span class="input-group-addon">{l s='px' mod='dev4webbanners'}</span>
							<input name="item_img_h" type="text" maxlength="4"/>
						</div>
					</div>
				</div>
				<div class="url item-field form-group">
					<label class="control-label col-lg-3">{l s='URL' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<input type="text" name="item_url" placeholder="http://" />
					</div>
				</div>
				<div class="target item-field form-group">
					<div class="col-lg-9 col-lg-offset-3">
						<div class="checkbox">
							<label class="control-label">
								{l s='Target blank' mod='dev4webbanners'}
								<input type="checkbox" name="item_target" value="1" />
							</label>
						</div>
					</div>
				</div>
				<div class="html item-field form-group">
					<label class="control-label col-lg-3">{l s='HTML' mod='dev4webbanners'}</label>
					<div class="col-lg-7">
						<textarea name="item_html" cols="65" rows="12"></textarea>
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-7 col-lg-offset-3">
						<button type="button" class="btn btn-default button-new-item-cancel"><i class="icon-remove"></i> {l s='Cancel' mod='dev4webbanners'}</button>
						<button type="submit" name="newItem" class="btn btn-success button-save pull-right"><i class="icon-save"></i> {l s='Save' mod='dev4webbanners'}</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	function setLanguage(language_id, language_code) {
		$('#lang-id').val(language_id);
		$('#selected-language').html(language_code);
	}
</script>
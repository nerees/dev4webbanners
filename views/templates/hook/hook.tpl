{*
* @author	Dev4Web
* 
* @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*}
{*<p> pew pew madafakas</p>
{$htmlitems|var_dump}
{$hook|var_dump}*}
{if isset($htmlitems) && $htmlitems}

	{if $hook == 'product_footer'}
		<div class="pos_title" style="text-align: left; margin-top: 60px;">
			<h4>Sužinok daugiau</h4>
			<hr class="dev4web-demo">
		</div>
		{foreach name=items item=hItem from=$htmlitems}
{*			{if $i%2==1} *}
{*				<div class="row">*}
					<div class="col-sm-12 col-md-6 dev4webeu" style="max-width: 50%; overflow: hidden;">
						{if $hItem.url}
						<a href="{$hItem.url|escape:'htmlall':'UTF-8'}" class="item-link"{if $hItem.target == 1} onclick="return !window.open(this.href);"{/if} title="{$hItem.title|escape:'htmlall':'UTF-8'}">
							{/if}

							{if $hItem.image}
								<img src="{$link->getMediaLink("`$module_dir`views/img/`$hItem.image|escape:'htmlall':'UTF-8'`")}" class="item-img img-responsive" title="{$hItem.title|escape:'htmlall':'UTF-8'}" alt="{$hItem.title|escape:'htmlall':'UTF-8'}" width="{if $hItem.image_w}{$hItem.image_w|intval}{else}100%{/if}" height="{if $hItem.image_h}{$hItem.image_h|intval}{else}100%{/if}"/>
								<div class="overlay">
									<div class="text dev-button">{if $hItem.title}{$hItem.title|escape:'htmlall':'UTF-8'}{/if}</div>
								</div>
							{/if}

							{if $hItem.html}
								<div class="itemhtml_desc">{$hItem.html nofilter} {*HTML CONTENT*}</div>
							{/if}

							{if $hItem.url}
						</a>
						{/if}
					</div>
{*				</div>*}
{*			{/if}*}
		{/foreach}
	{else}
		<div id="dev4webbanners_{$hook|escape:'htmlall':'UTF-8'}" class="dev4webbanners">
			<ul class="clearfix row">
				{foreach name=items from=$htmlitems item=hItem}

					{if $hook == 'left' || $hook == 'right'}

						<li class="block">

							<p class="h6 text-uppercase {if $hItem.title_use == 1}banner_title{/if}"><span>{if $hItem.title}{$hItem.title|escape:'htmlall':'UTF-8'}{else}{l s='Banner' mod='dev4webbanners'}{/if}</span></p>

							<div class="block_content">
								{if $hItem.url}
								<a href="{$hItem.url|escape:'htmlall':'UTF-8'}" class="item-link"{if $hItem.target == 1} onclick="return !window.open(this.href);"{/if} title="{$hItem.title|escape:'htmlall':'UTF-8'}">
									{/if}

									{if $hItem.image}
										<img src="{$link->getMediaLink("`$module_dir`views/img/`$hItem.image|escape:'htmlall':'UTF-8'`")}" class="item-img {if $hook == 'left' || $hook == 'right'}img-responsive{/if}" title="{$hItem.title|escape:'htmlall':'UTF-8'}" alt="{$hItem.title|escape:'htmlall':'UTF-8'}" width="{if $hItem.image_w}{$hItem.image_w|intval}{else}100%{/if}" height="{if $hItem.image_h}{$hItem.image_h|intval}{else}100%{/if}"/>
									{/if}

									{if $hItem.html}
										<div class="itemhtml_desc">{$hItem.html nofilter} {*HTML CONTENT*}</div>
									{/if}

									{if $hItem.url}
								</a>
								{/if}
							</div>

						</li>

					{else}

						<li class="dev4webbanners-item-{$smarty.foreach.items.iteration|escape:'htmlall':'UTF-8'} {if $hook == 'footer'}col-xs-12{else} col-xs-4{/if}">

							{if $hItem.url}
							<a href="{$hItem.url|escape:'htmlall':'UTF-8'}" class="item-link"{if $hItem.target == 1} onclick="return !window.open(this.href);"{/if} title="{$hItem.title|escape:'htmlall':'UTF-8'}">
								{/if}

								{if $hItem.image}
									<img src="{$link->getMediaLink("`$module_dir`views/img/`$hItem.image|escape:'htmlall':'UTF-8'`")}" class="item-img {if $hook == 'left' || $hook == 'right'}img-responsive{/if}" title="{$hItem.title|escape:'htmlall':'UTF-8'}" alt="{$hItem.title|escape:'htmlall':'UTF-8'}" width="{if $hItem.image_w}{$hItem.image_w|intval}{else}100%{/if}" height="{if $hItem.image_h}{$hItem.image_h|intval}{else}100%{/if}"/>
								{/if}

								{if $hItem.title && $hItem.title_use == 1 OR $hItem.html}
									<div class="item_desc">
										<div class="item_desc_position">
											{if $hItem.title && $hItem.title_use == 1}
												<h3 class="item-title">{$hItem.title|escape:'htmlall':'UTF-8'}</h3>
											{/if}
											{if $hItem.html}
												<div class="item-html">
													{$hItem.html nofilter} {*HTML CONTENT*}
												</div>
											{/if}
										</div>
									</div>
								{/if}

								{if $hItem.url}
							</a>
							{/if}

						</li>

					{/if}


				{/foreach}
			</ul>
		</div>
	{/if}
{/if}



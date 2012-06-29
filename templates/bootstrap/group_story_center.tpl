{if $enable_group eq "true"}
	{checkActionsTpl location="tpl_pligg_group_start"}
	{include file=$the_template."/group_summary.tpl"}
	{checkActionsTpl location="tpl_pligg_group_end"}
	{*down tabs begins*}
	
	
	<ul id="storytabs" class="nav nav-tabs">
		{checkActionsTpl location="tpl_pligg_group_sort_start"}
		{if $groupview eq "published"}<li class="active"><a href="{$groupview_published}"><span class="active">{#PLIGG_Visual_Group_Published#}</span></a>{else}<li><a href="{$groupview_published}">{#PLIGG_Visual_Group_Published#}</a>{/if}</li>
		{if $groupview eq "upcoming"}<li class="active"><a href="{$groupview_upcoming}"><span class="active">{#PLIGG_Visual_Group_Upcoming#}</span></a>{else}<li><a href="{$groupview_upcoming}">{#PLIGG_Visual_Group_Upcoming#}</a>{/if}</li>
		{if $groupview eq "shared"}<li class="active"><a href="{$groupview_sharing}"><span class="active">{#PLIGG_Visual_Group_Shared#}</span></a>{else}<li><a href="{$groupview_sharing}">{#PLIGG_Visual_Group_Shared#}</a>{/if}</li>
		{if $groupview eq "members"}<li class="active"><a href="{$groupview_members}"><span class="active">{#PLIGG_Visual_Group_Member#}</span></a>{else}<li><a href="{$groupview_members}">{#PLIGG_Visual_Group_Member#}</a>{/if}</li>
		{checkActionsTpl location="tpl_pligg_group_sort_end"}
	</ul>
	
	<div class="tab-content" id="tabbed">
		
		{if $groupview eq "published"}
			{$group_display}
			<div style="clear:both;"></div>
			{$group_story_pagination}
		{elseif $groupview eq "upcoming"}
			{$group_display}
			<div style="clear:both;"></div>
			{$group_story_pagination}
		{elseif $groupview eq "shared"}
			{$group_shared_display}
			<div style="clear:both;"></div>
			{$group_story_pagination}
		{elseif $groupview eq "members"}
			
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th style="width:32px">&nbsp;</th>
						<th>Username</th>
						{if $is_group_admin}
							<th style="width:100px;">Role</th>
							<th style="width:75px;">Edit</th>
							<th style="width:105px;">Activation</th>
						{/if}
					</tr>
				</thead>
				<tbody>
					{$member_display}
				</tbody>
			</table>
		{/if}		
	
	</div>
	
{/if}
{include file="$template/includes/tablelist.tpl" tableName="EmailsList" noSortColumns="-1"}

<div class="table-container clearfix">
    <table id="tableEmailsList" class="table table-list">
        <thead>
            <tr>
                <th>{$LANG.clientareaemailsdate}</th>
                <th>{$LANG.clientareaemailssubject}</th>
                <th>&nbsp;</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$emails item=email}
            <tr onclick="popupWindow('viewemail.php?id={$email.id}', 'emailWin', '650', '450')">
                <td class="text-center"><span class="hidden">{$email.normalisedDate}</span>{$email.date}</td>
                <td>{$email.subject}</td>
                <td class="text-center"><input type="button" class="btn btn-info btn-sm" value="{$LANG.emailviewmessage}" onclick="popupWindow('viewemail.php?id={$email.id}', 'emailWin', '650', '450')" /></td>
            </tr>
            {/foreach}
        </tbody>
    </table>
</div>

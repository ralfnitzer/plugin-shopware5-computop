    <div class="fatchip-computop-payment-ideal-form payment--form-group">

        {if !$FatchipCTPaymentData.issuer}
            {block name="frontend_checkout_payment_fatchip_computop_ideal_issuer_label"}
                <p class="none">
                    <label for="fatchip_computop_ideal_issuer">{s name='idealIssuerLabel'}Wählen Sie Ihre Bank{/s}</label>
                </p>
            {/block}

            <div class="select-field">
            {block name="frontend_checkout_payment_fatchip_computop_ideal_issuer_input"}
                    <select name="FatchipComputopPaymentData[fatchip_computop_ideal_issuer]"
                            id="fatchip_computop_ideal_issuer"
                            class="is--required"
                            {if $payment_mean.id == $form_data.payment}required="required" aria-required="true"{/if}
                    >
                        <option disabled="disabled" value="">--</option>
                        {foreach from=$FatchipCTPaymentData.idealIssuerList item=idealIssuer}
                            <option value="{$idealIssuer->getIssuerId()}"
                                    {if $form_data.fatchip_computop_ideal_issuer == $idealIssuer->geTIssuerId()}selected="selected"{/if}>
                                {$idealIssuer->getName()}
                            </option>
                        {/foreach}
                    </select>
            {/block}
            </div>
        {/if}
    </div>

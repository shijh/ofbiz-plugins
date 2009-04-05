<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<#if shipAddr?exists>
  <a href="<@ofbizUrl>setShipping</@ofbizUrl>" class="${trailClass.shipAddr}">${uiLabelMap.EcommerceChangeShippingAddress}</a>
  <#if shipOptions?exists>
    <a href="<@ofbizUrl>setShipOptions</@ofbizUrl>" class="${trailClass.shipOptions}">${uiLabelMap.EcommerceChangeShippingOptions}</a>
    <#if billing?exists>
      <form name= "setBilling" method= "post" action= "<@ofbizUrl>setBilling</@ofbizUrl>">
        <input type= "hidden" name= "resetType" value= "Y">
        <a href="javascript:document.setBilling.submit()" class="${trailClass.paymentType}">${uiLabelMap.EcommerceChangePaymentInfo}</a>
      </form>
    </#if>
  </#if>
</#if>

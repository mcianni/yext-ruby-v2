# YextClient::CustomField

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | The Custom Field&#39;s description which, if provided, will be shown as a tooltip next to the Custom Field in the Knowledge Manager. Providing a description is highly recommended when creating Apps.  | [optional] 
**alternate_language_behavior** | **String** | Custom Field multi-language profile behavior, which is one of:  &#x60;PRIMARY_ONLY&#x60;: The Custom Field can only have a value set on its primary language profile.  &#x60;OVERRIDABLE&#x60;: The Custom Field can have a value set on any alternate language profiles, which will override the primary language profile value when the alternate language profile is requested. When requested, if a value is not set for an alternate language profile, the primary language profile value will be returned.  &#x60;LANGUAGE_SPECIFIC&#x60;: The Custom Field can have a value set on any alternate language profiles. When requested, if a value is not set for an alternate language profile, no value will be returned.  | [optional] 
**group** | **String** | The Custom Field&#39;s group.  | [optional] 
**name** | **String** | The Custom Field&#39;s name. | [optional] 
**options** | [**Array&lt;CustomOption&gt;**](CustomOption.md) | Present if and only if &#x60;type&#x60; is &#x60;SINGLE_OPTION&#x60; or &#x60;MULTI_OPTION&#x60;.  List of options (key/value pairs) for the Custom Field.  Example: {   {      \&quot;key\&quot;: \&quot;2413\&quot;,     \&quot;value\&quot;: \&quot;Temporarily Closed\&quot;   },   {     \&quot;key\&quot;: \&quot;2414\&quot;,     \&quot;value\&quot;: \&quot;Coming Soon\&quot;   },   {     \&quot;key\&quot;: \&quot;2415\&quot;,     \&quot;value\&quot;: \&quot;Closed\&quot;   },   {     \&quot;key\&quot;: \&quot;2416\&quot;,     \&quot;value\&quot;: \&quot;Open\&quot;   } }  | [optional] 
**validation** | [**CustomValidation**](CustomValidation.md) |  | [optional] 
**type** | **String** | The data type of the Custom Field&#39;s contents. | [optional] 
**id** | **String** | The Custom Field ID. | [optional] 



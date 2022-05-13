<%@page contentType="text/html; charset=UTF-8"%>
<%
	
%>

<!doctype html>
<!--[if lte IE 9]>
<html lang="en" class="oldie">
<![endif]-->
<!--[if gt IE 9]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="isiEZEiVRZmpJEfzYoPe+ktbg/EmJA7y1gM1a9g84ndsUn+qk4HExNDNdCsNgAwDe5BGUSYMmh6bD8PBQtIvxQ==" />


<link rel="stylesheet" media="screen" href="https://cpwebassets.codepen.io/assets/fullpage/fullpage-1580f96ce81ff0a427cf57dda2748ce646c38efc201ae5942a29958cffa6856d.css" />
<link rel="stylesheet" media="all" href="https://cpwebassets.codepen.io/assets/global/global-b9b1d5e5124eb38e36b0ff310bd20d9c585366e15aeac445af6d716d22b0e9a5.css" />
<link rel="stylesheet" media="screen" href="https://cpwebassets.codepen.io/assets/packs/css/everypage-ab54e1bc.css" />
<link rel="stylesheet" media="all" href="https://cpwebassets.codepen.io/assets/page/page-be21d7391d3537792a8c64a95ec81bcdb3dddc035a018c9ffab6e659e736bf1f.css" />
<link rel="stylesheet" media="all" href="https://cpwebassets.codepen.io/assets/editor/editor-76c94becd624b7756023084930a434dfe6d2d8f8886e453f5273677b4fea3dd1.css" />
<meta name="twitter:card" content="summary_large_image">
<meta name="twitter:site" content="@CodePen">
<meta name="twitter:title" content="Music Player">
<meta name="twitter:description" content="...">
<meta name="twitter:image" content="https://shots.codepen.io/mustafaismail22/pen/Baqxbp-800.jpg?version=1471114149">
<meta property="og:image" content="https://shots.codepen.io/mustafaismail22/pen/Baqxbp-800.jpg?version=1471114149" itemprop="thumbnailUrl">
<meta property="og:title" content="Music Player">
<meta property="og:url" content="https://codepen.io/mustafaismail22/details/Baqxbp">
<meta property="og:site_name" content="CodePen">
<meta property="og:description" content="...">
<link rel="alternate" type="application/json+oembed" href="https://codepen.io/api/oembed?url=https%3A%2F%2Fcodepen.io%2Fmustafaismail22%2Fpen%2FBaqxbp&format=json" title="Music Player" />
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">
<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />
<link rel="mask-icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />
<script nonce="KVRabI45O7U=">
  /* Firefox needs this to prevent FOUT */
</script>
</head>
<body class="fullpage logged-out sidebar-false">
<header id="main-header" class="main-header"></header>
<div class="oldie-header">
<a href="https://codepen.io/mustafaismail22/pen/Baqxbp">Edit Pen</a>
</div>
<div id="result-iframe-wrap" role="main">
<iframe id="result" src="https://cdpn.io/mustafaismail22/fullpage/Baqxbp" sandbox="allow-downloads allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation-by-user-activation" allow="accelerometer; camera; encrypted-media; display-capture; geolocation; gyroscope; microphone; midi; clipboard-read; clipboard-write; web-share" allowTransparency="true" allowpaymentrequest="true" allowfullscreen="true" class="result-iframe" loading="lazy"></iframe>
</div>
<div id="full-view-ad"></div>
<textarea id="init-data" style="display:none">{&quot;__browser&quot;:{&quot;device&quot;:&quot;unknown_device&quot;,&quot;mobile&quot;:false,&quot;name&quot;:&quot;chrome&quot;,&quot;platform&quot;:&quot;pc&quot;,&quot;version&quot;:&quot;101&quot;},&quot;__constants&quot;:{&quot;gridIframeSandboxAttributes&quot;:&quot;allow-forms allow-modals allow-pointer-lock allow-presentation allow-same-origin allow-scripts&quot;},&quot;__CPDATA&quot;:{&quot;domain_iframe&quot;:&quot;https://cdpn.io&quot;,&quot;environment&quot;:&quot;production&quot;,&quot;host&quot;:&quot;codepen.io&quot;,&quot;iframe_allow&quot;:&quot;accelerometer; camera; encrypted-media; display-capture; geolocation; gyroscope; microphone; midi; clipboard-read; clipboard-write; web-share&quot;,&quot;iframe_sandbox&quot;:&quot;allow-downloads allow-forms allow-modals allow-pointer-lock allow-popups allow-presentation allow-same-origin allow-scripts allow-top-navigation-by-user-activation&quot;},&quot;__user&quot;:{&quot;anon&quot;:true,&quot;base_url&quot;:&quot;/anon/&quot;,&quot;current_team_id&quot;:0,&quot;current_team_hashid&quot;:null,&quot;hashid&quot;:&quot;VoDkNZ&quot;,&quot;id&quot;:1,&quot;itemType&quot;:&quot;user&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;paid&quot;:false,&quot;tier&quot;:0,&quot;username&quot;:&quot;anon&quot;,&quot;created_at&quot;:null,&quot;email_verified&quot;:null,&quot;collections_count&quot;:0,&quot;collections_private_count&quot;:0,&quot;followers_count&quot;:0,&quot;followings_count&quot;:0,&quot;pens_count&quot;:0,&quot;pens_private_count&quot;:0,&quot;projects_count&quot;:0,&quot;projects_private_count&quot;:0},&quot;__firebase&quot;:{&quot;config&quot;:{&quot;apiKey&quot;:&quot;AIzaSyBgLAe7N_MdFpuVofMkcQLGwwhUu5tuxls&quot;,&quot;authDomain&quot;:&quot;codepen-store-production.firebaseapp.com&quot;,&quot;databaseURL&quot;:&quot;https://codepen-store-production.firebaseio.com&quot;,&quot;disabled&quot;:false,&quot;projectId&quot;:&quot;codepen-store-production&quot;},&quot;token&quot;:&quot;eyJhbGciOiJSUzI1NiJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5nb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9vbGtpdCIsImNsYWltcyI6eyJvd25lcklkIjoiVm9Ea05aIiwiYWRtaW4iOmZhbHNlfSwiZXhwIjoxNjUyNDA3MTc2LCJpYXQiOjE2NTI0MDM1NzYsImlzcyI6ImZpcmViYXNlLWFkbWluc2RrLThva3lsQGNvZGVwZW4tc3RvcmUtcHJvZHVjdGlvbi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInN1YiI6ImZpcmViYXNlLWFkbWluc2RrLThva3lsQGNvZGVwZW4tc3RvcmUtcHJvZHVjdGlvbi5pYW0uZ3NlcnZpY2VhY2NvdW50LmNvbSIsInVpZCI6IlZvRGtOWiJ9.i4F-amjSVW3svXYcTo6wFmyl6b9n8HDCnairRl4K3FPTW2NKkpqUTQCDtGYhbu9shbHV3LxiF6AsrkfswDrtqpj_5KF2ui5KOI4cqliqvrAIrrCuL-ZsxirqIpJ-F88qDIvrHLw8Oo1Enr1BLHrrtRVMQ0m3R2ZzL0PdZAr5T-vn6WsBBxRclsqWuOtltNdgXD8I3U8Vk0pVlY27v9EpciD22DtbUGGLuYZlIi_AwTAY_WSfoKh93fvFFt0X3QlD07lIXqPPnFsIe12BnWbtlkOOr_5u9V68z-puVRAOT0tSLo6eDDZQ53KugTc4ZSSivoPetnMCYbjq1dVTcUSO6g&quot;},&quot;__graphql&quot;:{&quot;data&quot;:{&quot;sessionUser&quot;:{&quot;id&quot;:&quot;VoDkNZ&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;title&quot;:&quot;Captain Anonymous&quot;,&quot;avatar80&quot;:&quot;https://assets.codepen.io/t-1/user-default-avatar.jpg?fit=crop&amp;format=auto&amp;height=80&amp;version=0&amp;width=80&quot;,&quot;avatar512&quot;:&quot;https://assets.codepen.io/t-1/user-default-avatar.jpg?fit=crop&amp;format=auto&amp;height=512&amp;version=0&amp;width=512&quot;,&quot;currentContext&quot;:{&quot;id&quot;:&quot;VoDkNZ&quot;,&quot;baseUrl&quot;:&quot;/anon&quot;,&quot;title&quot;:&quot;Captain Anonymous&quot;,&quot;name&quot;:&quot;Captain Anonymous&quot;,&quot;avatar80&quot;:&quot;https://assets.codepen.io/t-1/user-default-avatar.jpg?fit=crop&amp;format=auto&amp;height=80&amp;version=0&amp;width=80&quot;,&quot;avatar512&quot;:&quot;https://assets.codepen.io/t-1/user-default-avatar.jpg?fit=crop&amp;format=auto&amp;height=512&amp;version=0&amp;width=512&quot;,&quot;username&quot;:&quot;anon&quot;,&quot;contextType&quot;:&quot;User&quot;,&quot;__typename&quot;:&quot;User&quot;},&quot;currentTeamId&quot;:null,&quot;baseUrl&quot;:&quot;/anon&quot;,&quot;username&quot;:&quot;anon&quot;,&quot;admin&quot;:false,&quot;anon&quot;:true,&quot;pro&quot;:false,&quot;verified&quot;:false,&quot;teams&quot;:[],&quot;__typename&quot;:&quot;User&quot;}}},&quot;__pay_stripe_public_key&quot;:&quot;pk_live_2GndomDfiklqpSNQn8FrGuwZSMIMzha7DkLJqlYe7IR0ihKAlKdiHg68JJc5eVPt68rzAjzAAVXcUwjySHRCsgjQQ00gtRBUFNH&quot;,&quot;__pay_braintree_env&quot;:&quot;production&quot;,&quot;__item&quot;:&quot;{\&quot;id\&quot;:2071123,\&quot;hashid\&quot;:\&quot;Baqxbp\&quot;,\&quot;itemType\&quot;:\&quot;pen\&quot;,\&quot;user_id\&quot;:3605,\&quot;slug_hash\&quot;:\&quot;sfmAF\&quot;,\&quot;private\&quot;:false,\&quot;slug_hash_private\&quot;:\&quot;a3e60d9037ba41fe8c6b137233cc83ce\&quot;}&quot;,&quot;__profiled&quot;:{&quot;base_url&quot;:&quot;/mustafaismail22&quot;,&quot;hashid&quot;:&quot;ZnbWAZ&quot;,&quot;id&quot;:3605,&quot;name&quot;:&quot;Mustafa ismail &quot;,&quot;type&quot;:&quot;user&quot;,&quot;username&quot;:&quot;mustafaismail22&quot;},&quot;__pageType&quot;:&quot;full&quot;}</textarea>
<div id="popup-overlay" class="overlay popup-overlay"></div>
<div id="modal-overlay" class="overlay modal-overlay"></div>
<script src="https://cpwebassets.codepen.io/assets/common/everypage-f84dd91ff413b23b8d1a6f7eadc615dc53c384f74f8254e068449db735b2c8cd.js"></script>
<script src="https://cpwebassets.codepen.io/assets/common/analytics_and_notifications-afa6925cbcff840929f2b7c543587d5f9d7a461af81ee7ca80631c8e37ac42f2.js"></script>
<script src="https://cpwebassets.codepen.io/assets/packs/js/vendor-106823859cb42908d5c8.chunk.js"></script>
<script src="https://cpwebassets.codepen.io/assets/packs/js/1-ae35cdb14d070cce614b.chunk.js"></script>
<script src="https://cpwebassets.codepen.io/assets/packs/js/referrer-tracking-ee1837c83d1a3b09885c.js"></script>
<script src="https://cpwebassets.codepen.io/assets/packs/js/vendor-106823859cb42908d5c8.chunk.js"></script>
<script src="https://cpwebassets.codepen.io/assets/packs/js/1-ae35cdb14d070cce614b.chunk.js"></script>
<script src="https://cpwebassets.codepen.io/assets/packs/js/everypage-ec1ffc93fbcd57813e6e.js"></script>
<script src="https://cpwebassets.codepen.io/assets/editor/full/full_page_renderer-8edf9934af5f33c7e00fe30580012df4d2ab48aad3bcc7f581030e5b876bff3b.js"></script>
</body>
</html>

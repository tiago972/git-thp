function i18n(e){var t=window.i18n_local,n=window.i18n_global;return void 0===t&&void 0===n?"":void 0!==t&&void 0!==t[e]?t[e]:n[e]}function _toConsumableArray(e){if(Array.isArray(e)){for(var t=0,n=Array(e.length);t<e.length;t++)n[t]=e[t];return n}return Array.from(e)}function _toConsumableArray(e){if(Array.isArray(e)){for(var t=0,n=Array(e.length);t<e.length;t++)n[t]=e[t];return n}return Array.from(e)}function _classCallCheck(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function _toConsumableArray(e){if(Array.isArray(e)){for(var t=0,n=Array(e.length);t<e.length;t++)n[t]=e[t];return n}return Array.from(e)}function _toConsumableArray(e){if(Array.isArray(e)){for(var t=0,n=Array(e.length);t<e.length;t++)n[t]=e[t];return n}return Array.from(e)}function _classCallCheck(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function _toConsumableArray(e){if(Array.isArray(e)){for(var t=0,n=Array(e.length);t<e.length;t++)n[t]=e[t];return n}return Array.from(e)}function _classCallCheck(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}function _toConsumableArray(e){if(Array.isArray(e)){for(var t=0,n=Array(e.length);t<e.length;t++)n[t]=e[t];return n}return Array.from(e)}var Analytics=function(){function e(){o(),t()}function t(){h=f||document.referrer,f=document.URL,a("page")}function n(e,t,n,r,o){a("track",{event:t||"",propertiesCategory:e||"",propertiesLabel:n||"",propertiesValue:r||""},o)}function r(){return g}function a(e,t,n){var r=s(e);t&&Object.keys(t).forEach(function(e){r[e]=t[e]});var o=Object.keys(r).map(function(e){return encodeURIComponent(e)+"="+encodeURIComponent(r[e])}).join("&"),a=m+"?"+o;if("beacon"==n&&navigator.sendBeacon)navigator.sendBeacon(a);else{var i=new XMLHttpRequest;i.open("GET",a,!0),i.send()}}function s(e){var t=window.innerWidth||(document.documentElement||{}).clientWidth,n=window.innerHeight||(document.documentElement||{}).clientHeight,r=parseInt(1e9*Math.random());return{apiKey:p+t+document.title.length+document.URL.length+r,ui:r,anonymousId:g,type:e,userAgent:navigator.userAgent,pageReferrer:h,pageTitle:document.title,pageUrl:document.URL,screenDensity:window.devicePixelRatio,windowWidth:t,windowHeight:n,language:navigator.language||navigator.userLanguage}}function o(){!0===u()?(g=localStorage.getItem("aid"))||(g=i(),localStorage.setItem("aid",g)):(g=c("aid"))||l("aid",g=i(),3650)}function i(){return Math.random().toString(36).substring(2)}function l(e,t,n){var r="";if(n){var o=new Date;o.setTime(o.getTime()+24*n*60*60*1e3),r="; expires="+o.toUTCString()}document.cookie=e+"="+t+r+"; path=/"}function c(e){for(var t=e+"=",n=document.cookie.split(";"),r=0;r<n.length;r++){for(var o=n[r];" "==o.charAt(0);)o=o.substring(1,o.length);if(0==o.indexOf(t))return o.substring(t.length,o.length)}return null}function u(){var e="test";try{return localStorage.setItem(e,e),localStorage.removeItem(e),!0}catch(t){return!1}}function d(){var e=h;if(!e)return null;for(var t=0;t<v.length;++t){var n=v[t],r=e.indexOf(n);if(0<r){var o=r+n.length,a=e.indexOf("/",o);return a<0&&(a=e.indexOf("?",o))<0&&(a=e.length),e.substring(o,a)}}return null}var f,h,g,m="https://cat.pexels.com/atu.css",p=762885251,v=["/search/","/de-de/suche/","/pt-br/procurar/"];return e(),{page:t,track:n,getAnonymousId:r,getSearchQueryFromReferrer:d}}(),UTIL=function(){function e(t){if(S||r())S=!0,t();else{var n=function e(){r()&&(S=!0,window.removeEventListener("load",t),document.removeEventListener("readystatechange",e),t())};document.addEventListener("readystatechange",n),window.addEventListener("load",t)}}function r(){return"complete"===document.readyState||"loading"!==document.readyState&&!document.documentElement.doScroll}function n(e,t){e&&(e.classList?e.classList.add(t):e.className+=" "+t)}function o(e,t){e&&(e.classList?e.classList.remove(t):e.className=e.className.replace(new RegExp("(^|\\b)"+t.split(" ").join("|")+"(\\b|$)","gi")," "))}function t(e,t){a(e,t)?o(e,t):n(e,t)}function a(e,t){return e.classList?e.classList.contains(t):new RegExp("(^| )"+t+"( |$)","gi").test(e.className)}function i(e){try{var t=new CustomEvent(e)}catch(n){(t=document.createEvent("CustomEvent")).initCustomEvent(e,!0,!0,null)}document.dispatchEvent(t)}function s(){return null===A||A===undefined?A=document.querySelector('meta[name="csrf-token"]').getAttribute("content"):A}function l(e){var t=new XMLHttpRequest;return t.open("GET",e,!0),t.setRequestHeader("X-CSRF-Token",s()),t.setRequestHeader("Accept","text/javascript, application/javascript, application/ecmascript, application/x-ecmascript, */*; q=0.01"),t.setRequestHeader("X-Requested-With","XMLHttpRequest"),t}function c(e,t,n){var r=new XMLHttpRequest;return r.open("GET",e,!0),r.setRequestHeader("X-CSRF-Token",s()),r.onreadystatechange=function(){4===r.readyState&&(200<=r.status&&r.status<400?t(r.responseText):n(r.responseText))},r.send(),r}function u(e,t,n){var r=e.url,o=e.body,a=new XMLHttpRequest;return a.open("POST",r,!0),a.setRequestHeader("X-CSRF-Token",s()),a.setRequestHeader("Content-Type","application/json"),a.onreadystatechange=function(){4===a.readyState&&(200<=a.status&&a.status<400?t(a.responseText):n(a.responseText))},a.send(JSON.stringify(o)),a}function d(e){var t=("; "+document.cookie).split("; "+e+"=");if(2==t.length)return t.pop().split(";").shift()}function f(e){y=e}function h(){return y||!1}function g(){return document.documentElement.getAttribute("data-locale")}function m(e){return null!=e&&"object"==typeof e&&"[object Object]"===Object.prototype.toString.call(e)}function p(n,r){var o;return function(){var e=this,t=arguments;clearTimeout(o),o=setTimeout(function(){o=null,n.apply(e,t)},r)}}function v(n,r,o){var a,i,s,l=null,c=0;o||(o={});var u=function(){c=!1===o.leading?0:Date.now(),l=null,s=n.apply(a,i),l||(a=i=null)};return function(){var e=Date.now();c||!1!==o.leading||(c=e);var t=r-(e-c);return a=this,i=arguments,t<=0||r<t?(l&&(clearTimeout(l),l=null),c=e,s=n.apply(a,i),l||(a=i=null)):l||!1===o.trailing||(l=setTimeout(u,t)),s}}function T(e){var t=arguments.length<=0||e===undefined?"":e,n=document.createElement("div");return n.innerHTML=t.trim(),n.firstChild}var y,A,S=!1;return{ready:e,addClass:n,removeClass:o,hasClass:a,toggleClass:t,triggerEvent:i,getCsrfToken:s,scriptRequest:l,getRequest:c,postRequest:u,setSignedIn:f,isSignedIn:h,getCookie:d,getLocale:g,isObject:m,debounce:p,throttle:v,createElementFromHtml:T}}(),ENDLESS_SCROLLING=function(){function init(){document.querySelector(SELECTOR_NEXT_PAGE)&&(elPagination=document.querySelector(SELECTOR_PAGINATION))&&(seed=elPagination.getAttribute("data-seed"),setBottomThreshold(),restoreState(),checkIfNearBottom(),bindEvents())}function terminate(){unbindEvents()}function setBottomThreshold(){document.querySelector(".footer")&&(bottomThreshold+=BOTTOM_THRESHOLD_FOOTER_ADDITION)}function bindEvents(){document.addEventListener("scroll",checkIfNearBottom),window.addEventListener("beforeunload",saveScrollPosition)}function unbindEvents(){document.removeEventListener("scroll",checkIfNearBottom),window.removeEventListener("beforeunload",saveScrollPosition)}function checkIfNearBottom(){var e=window.pageYOffset+window.innerHeight;if(0===loadingPages.length&&e>document.body.scrollHeight-bottomThreshold){var t=document.querySelector(SELECTOR_NEXT_PAGE);if(!t)return;var n=t.getAttribute("href");if(!n)return;bottomThreshold<=BOTTOM_THRESHOLD_SMALL+BOTTOM_THRESHOLD_FOOTER_ADDITION&&(bottomThreshold+=BOTTOM_THRESHOLD_ADDITION),UTIL.removeClass(document.querySelector(SELECTOR_LOADING_BAR),"hidden");var r,o=n+"&format=js";if(history.state!==undefined)null!==history.state&&history.state.pages?r=history.state:(r={pages:[]},history.state&&history.state.activeHomeTab&&(r.activeHomeTab=history.state.activeHomeTab)),r.pages.push(o),history.replaceState(r,"");loadPage(o)}}function restoreState(){if(history.state&&history.state.pages&&0<history.state.pages.length){if(seed!=history.state.seed&&3<history.state.pages.length)return;for(var t=0;t<history.state.pages.length;t++)loadPage(history.state.pages[t]);document.addEventListener("new-page",function e(){0==loadingPages.length&&(document.removeEventListener("new-page",e),window.scrollTo(0,history.state.pos))})}}function saveScrollPosition(){if(history.state&&history.state.pages){var e=history.state;e.pos=window.pageYOffset,e.seed=seed,history.replaceState(e,"")}}function loadPage(url){url+="&seed="+seed;var index=loadingPages.length;loadingPages.push(url);var request=UTIL.scriptRequest(url);request.onload=function(){if(loadingPages.splice(loadingPages.indexOf(url),1),loadedPages[index]=request.responseText,0==loadingPages.length){for(var i=0;i<loadedPages.length;i++)elPagination.innerHTML="",eval(loadedPages[i]);loadedPages=[],UTIL.addClass(document.querySelector(SELECTOR_LOADING_BAR),"hidden"),UTIL.triggerEvent("new-page")}},request.send()}var SELECTOR_NEXT_PAGE=".pagination .next_page",SELECTOR_PAGINATION=".js-pagination",SELECTOR_LOADING_BAR=".js-loading",BOTTOM_THRESHOLD_SMALL=3*window.innerHeight,BOTTOM_THRESHOLD_FOOTER_ADDITION=280,BOTTOM_THRESHOLD_ADDITION=window.innerHeight,bottomThreshold=BOTTOM_THRESHOLD_SMALL,loadingPages=[],loadedPages=[],elPagination,seed;return UTIL.ready(init),{init:init,terminate:terminate}}(),FacebookPixel=function(){function e(){var e,t,n,r,o,a,i;e=window,t=document,n="script",r="https://connect.facebook.net/en_US/fbevents.js",e.fbq||(o=e.fbq=function(){o.callMethod?o.callMethod.apply(o,arguments):o.queue.push(arguments)},e._fbq||(e._fbq=o),(o.push=o).loaded=!0,o.version="2.0",o.queue=[],(a=t.createElement(n)).async=!0,a.src=r,(i=t.getElementsByTagName(n)[0]).parentNode.insertBefore(a,i)),fbq("init","722281101294022"),fbq("track","PageView")}function t(e,t){"CompleteRegistration"==e?fbq("track",e,t):fbq("trackCustom",e,t)}return UTIL.ready(e),{track:t}}();window.pexelsFacebookPixelOnload!==undefined&&window.pexelsFacebookPixelOnload(),function(){function e(){var e=document.createElement("script");e.src="/assets/app-async-286b2f89df6d2a591ec0d6fcd82dd9d725d806762b8d49dfedddc5aa68000cd8.js",document.body.appendChild(e)}UTIL.ready(e)}(),function(){function e(){var e=UTIL.getCookie("locale"),t=window.location.pathname;e&&("en"==e?(e="en-US",n()):"de"==e&&(e="de-DE",n())),e&&"en-US"!==e&&"/"===t&&"locale=en-us"!==window.location.search.substring(1)?window.location.replace("/"+e.toLowerCase()+"/"):n()}function n(){var e=UTIL.getLocale();document.cookie="locale="+e+"; expires="+t()+"; path=/"}function t(){var e=new Date;return e.setTime(e.getTime()+63072e7),e.toUTCString()}UTIL.ready(e)}(),function(){function e(){"true"==localStorage.getItem("newsletterSubscribed")&&UTIL.addClass(document.body,"newsletter-subscribed")}UTIL.ready(e)}(),/(\?nc|&nc)$/.test(document.location.href)&&history.replaceState({},document.title,document.location.href.replace(/(\?nc|&nc)$/,"")),UTIL.ready(function(){UTIL.removeClass(document.body,"no-js")});var GRID_HELPERS={getNumberOfColumnsToShow:function(e){var t=e.options,n=t.maxColumnWidth,r=n===undefined?0:n,o=t.minColumnWidth,a=o===undefined?0:o,i=window.innerWidth,s=(+r-+a)/2+ +a,l=i/+s,c=[Math.floor(l),Math.ceil(l)].reduce(function(e,t){var n=s,r=i/t;return Math.abs(r-n)<Math.abs(r-n)?t:e});return c<=0?1:c},addColumnsToAGrid:function(e,t,n){var r=arguments.length<=2||n===undefined?0:n;t.innerHTML="";for(var o=0;o<r;o++){var a=this._createNewColumnElement(e);t.appendChild(a)}return t},getAspectRatioFromEl:function(e,t){if(!(t=t&&t.querySelector(".photo-item")))return 0;var n=+t.getAttribute(e.options.aspectRatioAttribute)||null;return null===n?0:1/n},generateNextColumnGetter:function(n,e){var r=this,o=[].concat(_toConsumableArray(e.querySelectorAll(n.options.columnSelector))).map(function(e){return[].concat(_toConsumableArray(e.children)).reduce(function(e,t){return e+r.getAspectRatioFromEl(n,t)},0)});return function(e){var t=o.indexOf(Math.min.apply(Math,_toConsumableArray(o)));return o[t]+=r.getAspectRatioFromEl(n,e),t}},_createNewColumnElement:function(e){var t=document.createElement("div");return UTIL.addClass(t,e.options.columnClass),t}},_createClass=function(){function r(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(e,t,n){return t&&r(e.prototype,t),n&&r(e,n),e}}(),PhotoGrid=function(){function o(e){var t=this,n=arguments.length<=0||e===undefined?{}:e;_classCallCheck(this,o);var r={aspectRatioAttribute:"data-aspect-ratio",carbonAdClass:"js-carbon-ad-in-photos",columnClass:"photos__column",columnSelector:".photos__column",debounceTime:50,enforceFilledRows:!1,gridClass:"photos",itemSelector:".photo-item",itemType:"data-grid-item-type",itemPositions:{carbonad:{column:"last",row:"first",singleColumnPosition:"first"},leaderboard:{column:"last",row:0,singleColumnPosition:8},challenge:{column:"first",row:2,singleColumnPosition:4},collection:{column:"last",row:1,singleColumnPosition:6}},minColumnWidth:400,maxColumnWidth:450,selector:".photos"};this.OPTIONS=Object.assign({},r,n),UTIL.ready(function(){t.grid=document.querySelector(t.OPTIONS.selector),t.grid&&(t.OPTIONS=Object.assign({},t.OPTIONS,t.grid.dataset),t.refreshColumns(),t.resizeListener(!0),t.resizeListener=UTIL.debounce(t.resizeListener,t.OPTIONS.debounceTime),window.addEventListener("resize",function(){return t.resizeListener()}))})}return _createClass(o,[{key:"refreshColumns",value:function(){this.columns=[].concat(_toConsumableArray(this.grid.querySelectorAll(this.OPTIONS.columnSelector)))}},{key:"resizeListener",value:function(e){var t=!(arguments.length<=0||e===undefined)&&e,n=GRID_HELPERS.getNumberOfColumnsToShow(this);(t||this.shouldRedraw(n))&&this.redrawColumns(n)}},{key:"redrawColumns",value:function(e){var t=arguments.length<=0||e===undefined?1:e,r=this.generateANewGridWithColumns(t),n=this.getAllGridItemsInTheProperOrder(),o=n.gridItemsInProperOrder,a=n.clonedElements,i=GRID_HELPERS.generateNextColumnGetter(this,r);o.forEach(function(e){var t=i(e),n=e.cloneNode(!0);n.style.display=null,r.children[t].appendChild(n)}),this.insertPositionedItemsIntoTheGrid(r,a),this.OPTIONS.enforceFilledRows&&this.hideGridItemsInIncompleteRows(r),this.grid.parentNode.replaceChild(r,this.grid),this.grid=r,this.refreshColumns(),this.currentColCountCache=t}},{key:"insertPositionedItemsIntoTheGrid",value:function(r,l){var c=this,u=r.children.length,d=[],f=new Array(u).fill(!1);Object.keys(l).forEach(function(e){var t=l[e],n=c.OPTIONS.itemPositions[e],r=null,o=null;"first"===n.column?r=0:"last"===n.column&&(r=u-1),Array.isArray(d[r])||(d[r]=[]),o=d[r];var a=n.row;if(1===u&&"undefined"!=typeof n.singleColumnPosition&&(a=n.singleColumnPosition),"first"===a)f[r]=!0,o.unshift(t);else if(!Number.isNaN(+a)){var i=0==+a&&f[r]?1:0,s=+a+i;s>o.length&&(o.length=s+1),o.splice(+a+i,0,t)}}),d.forEach(function(e,n){e.length<=0||e.forEach(function(e,t){e&&r.children[n].insertBefore(e,r.children[n].children[t])})})}},{key:"shouldRedraw",value:function(e){return"undefined"==typeof this.currentColCountCache&&(this.currentColCountCache=this.columns.length),this.currentColCountCache!==e}},{key:"generateANewGridWithColumns",value:function(e){var t=arguments.length<=0||e===undefined?1:e,n=this.createNewGridElement();return GRID_HELPERS.addColumnsToAGrid(this,n,t),n}},{key:"createNewGridElement",value:function(){var e=document.createElement("div");return UTIL.addClass(e,this.OPTIONS.gridClass),e}},{key:"getAllGridItemsInTheProperOrder",value:function(){for(var o=this,e=this.columns.reduce(function(e,t){var n=t.children.length;return n<e?e:n},0),a={},i=[],t=function(r){o.columns.forEach(function(e){var t=e.children[r];if(t){var n=t.querySelector(o.OPTIONS.itemSelector)&&t.querySelector(o.OPTIONS.itemSelector).getAttribute(o.OPTIONS.itemType);0<=Object.keys(o.OPTIONS.itemPositions).indexOf(n)?a[n]=t:i.push(t)}})},n=0;n<e;n++)t(n);return{gridItemsInProperOrder:i,clonedElements:a}}},{key:"hideGridItemsInIncompleteRows",value:function(e){var t=[].concat(_toConsumableArray(e.children)).map(function(e){return e.children.length});if(!t.every(function(e){return e===t[0]})){var n=Math.min.apply(Math,_toConsumableArray(t));[].concat(_toConsumableArray(e.children)).forEach(function(e){e.children.length<=n||[].concat(_toConsumableArray(e.children)).slice(n,e.children.length).forEach(function(e){e.style.display="none"})})}}},{key:"options",get:function(){return this.OPTIONS}}]),o}(),infiniteScrollingAppender=function(h){return function(e){var t=arguments.length<=0||e===undefined?{}:e,n=Object.assign({},{currentPage:null,inlineSponsoredPhotosUrl:null,paginationContainerSelector:".js-pagination",totalPages:null,willPaginateHtml:null},t),r=!1,o=80,a=document.querySelector(h.options.selector);0===a.querySelectorAll(h.options.columnSelector).length&&GRID_HELPERS.addColumnsToAGrid(h,a,GRID_HELPERS.getNumberOfColumnsToShow(h));var i=[].concat(_toConsumableArray(a.querySelectorAll(h.options.columnSelector))),s=i.map(function(){return document.createDocumentFragment()}),l=document.querySelector(n.paginationContainerSelector),c=i.reduce(function(e,t){return e+t.children.length},0),u=GRID_HELPERS.generateNextColumnGetter(h,a),d=function(e){var t=u(e);s[t].appendChild(e),c++},f=function(){return UTIL.createElementFromHtml("\n      <div "+h.options.aspectRatioAttribute+"=\"0.85\" class='js-sponsored-photos photo-item' data-url="+n.inlineSponsoredPhotosUrl+">\n      </div>\n    ")};return{append:function(e){r||(n.inlineSponsoredPhotosUrl&&0<c&&c%o==0&&d(f()),d(UTIL.createElementFromHtml(e)))},execute:function(){if(r)return console.warn("PhotoGrid.infiniteScrollingAppender#execute can only be executed once.");s.forEach(function(e,t){return i[t].appendChild(e)}),window.options=1===n.currentPage?"":"appended",UTIL.triggerEvent("new-photos"),n.totalPages>n.currentPage?l.innerHTML=n.willPaginateHtml:UTIL.triggerEvent("end-of-photos"),r=!0}}}},PHOTO_GRID_INSTANCES_CACHE={},getTypeFromOptions=function(e){return e&&e.type||"default"};PhotoGrid.infiniteScrollingAppender=function(e){var t=getTypeFromOptions(e);return PHOTO_GRID_INSTANCES_CACHE[t].infiniteScrollingAppender(e)};var InitiatePhotoGrid=function(e){var t=getTypeFromOptions(e),n=new PhotoGrid(e);return PHOTO_GRID_INSTANCES_CACHE[t]={instance:n,infiniteScrollingAppender:infiniteScrollingAppender(n)}};InitiatePhotoGrid(),function(){function e(){(UTIL.getCookie("pexels_auth")||i())&&(UTIL.setSignedIn(!0),UTIL.ready(t)),c=!1}function t(){r(),o()}function n(e){var t=document.querySelector(".js-avatar");if(t){var n;try{n=e&&e.avatar||decodeURIComponent(UTIL.getCookie("avatar_url")||"")}catch(r){return}t.setAttribute("src",n)}}function r(){UTIL.addClass(document.body,"signed-in")}function o(){var e=i();e&&(a(e),n(e))}function a(e){var t=document.querySelector(".js-user-name");t&&(t.innerText=e.name)}function i(){var e=localStorage.user;if(!e)return s(),null;var t=JSON.parse(e);return t.avatar||s(),t}function s(){if(!c){c=!0;var e=new XMLHttpRequest;e.open("GET","/me/",!0),e.setRequestHeader("Accept","application/json, text/*"),e.onreadystatechange=function(){4===e.readyState&&200<=e.status&&e.status<400&&(l(e.responseText),o())},e.send()}}function l(e){var t;try{t=JSON.parse(e)}catch(r){return void console.log(r)}var n={name:t.first_name,hero:"no_hero"!==t.hero_status,avatar:t.avatar,photographer:t.photographer};localStorage.user=JSON.stringify(n)}var c=!0;e()}();var _createClass=function(){function r(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(e,t,n){return t&&r(e.prototype,t),n&&r(e,n),e}}(),SponsoredPhotos=function(){function SponsoredPhotos(){var e=this;_classCallCheck(this,SponsoredPhotos),document.addEventListener("new-sponsored-photos",function(){e.loadAllSponsoredPhotos()}),document.addEventListener("new-photos",function(){e.loadAllSponsoredPhotos()}),document.addEventListener("end-of-photos",function(){e.loadAllSponsoredPhotos(),e.loadAllSponsoredPhotos({respectLoadOnInitAttribute:!1})}),this.loadAllSponsoredPhotos()}return _createClass(SponsoredPhotos,[{key:"loadAllSponsoredPhotos",value:function loadAllSponsoredPhotos(argument_0){var _ref=arguments.length<=0||argument_0===undefined?{}:argument_0,_ref$respectLoadOnInitAttribute=_ref.respectLoadOnInitAttribute,respectLoadOnInitAttribute=_ref$respectLoadOnInitAttribute===undefined||_ref$respectLoadOnInitAttribute,els=[].concat(_toConsumableArray(document.querySelectorAll(".js-sponsored-photos")));els.forEach(function(el){if(!(el.getAttribute("data-loaded")||respectLoadOnInitAttribute&&"false"==el.getAttribute("data-load-on-init"))){var showChinaLink="zh-cn"===navigator.language.toLowerCase()&&!!el.getAttribute("data-url-china"),url=showChinaLink?el.getAttribute("data-url-china"):el.getAttribute("data-url"),request=UTIL.scriptRequest(url);request.onload=function(){document.body.contains(el)&&200<=request.status&&request.status<400&&(el.innerHTML=eval(request.responseText),el.setAttribute("data-loaded",!0),TrackLinks.bindEvents(document.querySelectorAll(".js-sponsored-photos-links")))},request.send()}})}}]),SponsoredPhotos}();UTIL.ready(function(){return new SponsoredPhotos});var _slicedToArray=function(){function n(e,t){var n=[],r=!0,o=!1,a=undefined;try{for(var i,s=e[Symbol.iterator]();!(r=(i=s.next()).done)&&(n.push(i.value),!t||n.length!==t);r=!0);}catch(l){o=!0,a=l}finally{try{!r&&s["return"]&&s["return"]()}finally{if(o)throw a}}return n}return function(e,t){if(Array.isArray(e))return e;if(Symbol.iterator in Object(e))return n(e,t);throw new TypeError("Invalid attempt to destructure non-iterable instance")}}(),_createClass=function(){function r(e,t){for(var n=0;n<t.length;n++){var r=t[n];r.enumerable=r.enumerable||!1,r.configurable=!0,"value"in r&&(r.writable=!0),Object.defineProperty(e,r.key,r)}}return function(e,t,n){return t&&r(e.prototype,t),n&&r(e,n),e}}(),TailoredSearchTags=function(){function e(){_classCallCheck(this,e),this.MAX_COUNT_OF_CLICKED_TAGS_TO_STORE=30,this.LOCAL_STORAGE_KEY="tailored-search-tags",this.RELATED_SEARCH_RESULT_DATA_ATTRIBUTE="data-related-search-item",this.RELATED_SEARCH_RESULT_SELECTOR=".js-related-search-item",this.POPULAR_SEARCH_DATA_ATTRIBUTE="data-popular-search-value",this.POPULAR_SEARCH_TAG_SELECTOR=".js-popular-search-tag",this._isOnSearchPage()&&this._persistSimilarResults(),this._isOnHomePage()&&this._attemptToReplaceSuggestedTagsWithSimilarResults()}return _createClass(e,[{key:"_isOnSearchPage",value:function(){return 0<this._getAllRelatedSearchItemElements().length}},{key:"_isOnHomePage",value:function(){return 0<this._getAllPopularSearchTagElements().length}},{key:"_persistSimilarResults",value:function(){var t=this,e=this._getAllRelatedSearchItemElements().map(function(e){return e.attributes[t.RELATED_SEARCH_RESULT_DATA_ATTRIBUTE].value}).filter(function(e){return 0<(arguments.length<=0||e===undefined?"":e).length});this.similarTags=this.similarTags.concat(e)}},{key:"_attemptToReplaceSuggestedTagsWithSimilarResults",value:function(){var r=this,o=this._getAllPopularSearchTagElements();this._getRandomValuesFromArray(o.length,this.similarTags).forEach(function(e,t){if(o[t]&&!r.currentTagValues.includes(e)){var n=o[t].innerText.toLowerCase().trim();o[t].href=r._replaceTagInSearchPath(o[t].href,n,e),o[t].innerText=e,o[t].dataset.trackLabel=e,o[t].dataset.trackAction="suggested-search",o[t].dataset.popularSearchValue=e}})}},{key:"_getAllPopularSearchTagElements",value:function(){return[].concat(_toConsumableArray(document.querySelectorAll(this.POPULAR_SEARCH_TAG_SELECTOR)))}},{key:"_getAllRelatedSearchItemElements",value:function(){return[].concat(_toConsumableArray(document.querySelectorAll(this.RELATED_SEARCH_RESULT_SELECTOR)))}},{key:"_getRandomValuesFromArray",value:function(e,t){for(var n=arguments.length<=0||e===undefined?1:e,r=arguments.length<=1||t===undefined?[]:t,o=[].concat(_toConsumableArray(r)),a=new Set;0<o.length&&a.size<n;){var i=Math.floor(Math.random()*o.length),s=o.splice(i,1),l=_slicedToArray(s,1)[0];a.add(l)}return[].concat(_toConsumableArray(a))}},{key:"_replaceTagInSearchPath",value:function(e,t,n){var r=arguments.length<=0||e===undefined?"":e,o=arguments.length<=1||t===undefined?"":t,a=arguments.length<=2||n===undefined?"":n;return encodeURI(decodeURI(r).replace(o,a))}},{key:"similarTags",get:function(){try{var e=JSON.parse(localStorage.getItem(this.LOCAL_STORAGE_KEY));if(Array.isArray(e)&&(localStorage.removeItem(this.LOCAL_STORAGE_KEY),e=undefined),UTIL.isObject(e)){var t=e[UTIL.getLocale()];Array.isArray(t)&&(e=t)}return Array.isArray(e)?e:[]}catch(n){}return[]},set:function(e){var t=arguments.length<=0||e===undefined?[]:e;t=(t=[].concat(_toConsumableArray(new Set(t)))).slice(t.length-this.MAX_COUNT_OF_CLICKED_TAGS_TO_STORE,t.length);try{var n=JSON.parse(localStorage.getItem(this.LOCAL_STORAGE_KEY));UTIL.isObject(n)||(n={}),n[UTIL.getLocale()]=t,localStorage.setItem(this.LOCAL_STORAGE_KEY,JSON.stringify(n))}catch(r){}}},{key:"currentTagValues",get:function(){var t=this;return this._getAllPopularSearchTagElements().map(function(e){return e.attributes[t.POPULAR_SEARCH_DATA_ATTRIBUTE]})}}]),e}();UTIL.ready(function(){return new TailoredSearchTags});var TrackLinks=function(){function e(){t(document.querySelectorAll("[data-track-action]")),r(".carbon-ad, .js-carbon-ad-in-photos")}function t(e){Array.prototype.forEach.call(e,function(e){e.addEventListener("click",n)})}function n(e){for(var t=e.target,n=0;n<4&&null==t.getAttribute("data-track-label");n++)t=t.parentNode;Track.event("track-click",t.getAttribute("data-track-action"),t.getAttribute("data-track-label"),t.getAttribute("data-track-value"),"beacon")}function r(e){(i=document.querySelector(e))&&i.addEventListener("DOMSubtreeModified",o)}function o(){i.removeEventListener("DOMSubtreeModified",o);var e=i.querySelector(".carbon-img"),t=i.querySelector(".carbon-text");e&&e&&(e.addEventListener("click",a),t.addEventListener("click",a))}function a(){Track.event("track-click","carbon","carbon")}return UTIL.ready(e),{bindEvents:t,carbonClicks:r};var i}();window.Track=function(){function e(e,t,n,r,o){Analytics.track(e,t,n,r,o),ga("send","event",{eventCategory:e,eventAction:t,eventLabel:n,eventValue:r,transport:o}),"download"==e?FacebookPixel.track(e):"photo"==e&&"submitted"==t?FacebookPixel.track("PhotosUploaded",{count:r}):"user"==e&&"sign-up"==t&&FacebookPixel.track("CompleteRegistration")}function t(){Analytics.page(),ga("send","pageview",location.pathname),fbq("track","PageView")}if("undefined"!=typeof Track&&Track.eventList){var n=!0,r=!1,o=undefined;try{for(var a,i=Track.eventList[Symbol.iterator]();!(n=(a=i.next()).done);n=!0){var s=a.value;e.apply(undefined,_toConsumableArray(s))}}catch(l){r=!0,o=l}finally{try{!n&&i["return"]&&i["return"]()}finally{if(r)throw o}}}return{page:t,event:e}}();
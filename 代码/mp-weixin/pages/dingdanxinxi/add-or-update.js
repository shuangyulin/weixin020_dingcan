(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/dingdanxinxi/add-or-update"],{"78b8":function(n,i,e){"use strict";(function(n){e("c89d"),e("921b");t(e("66fd"));var i=t(e("d72e"));function t(n){return n&&n.__esModule?n:{default:n}}n(i.default)}).call(this,e("543d")["createPage"])},abb5:function(n,i,e){"use strict";var t=e("fe16"),a=e.n(t);a.a},b814:function(n,i,e){"use strict";var t={"w-picker":function(){return Promise.all([e.e("common/vendor"),e.e("components/w-picker/w-picker")]).then(e.bind(null,"a588"))}},a=function(){var n=this,i=n.$createElement;n._self._c},r=[];e.d(i,"b",(function(){return a})),e.d(i,"c",(function(){return r})),e.d(i,"a",(function(){return t}))},ccf0:function(n,i,e){"use strict";e.r(i);var t=e("fc77"),a=e.n(t);for(var r in t)"default"!==r&&function(n){e.d(i,n,(function(){return t[n]}))}(r);i["default"]=a.a},d72e:function(n,i,e){"use strict";e.r(i);var t=e("b814"),a=e("ccf0");for(var r in a)"default"!==r&&function(n){e.d(i,n,(function(){return a[n]}))}(r);e("abb5");var u,s=e("f0c5"),o=Object(s["a"])(a["default"],t["b"],t["c"],!1,null,"0b9d915c",null,!1,t["a"],u);i["default"]=o.exports},fc77:function(n,i,e){"use strict";(function(n){Object.defineProperty(i,"__esModule",{value:!0}),i.default=void 0;var t=a(e("a34a"));function a(n){return n&&n.__esModule?n:{default:n}}function r(n,i,e,t,a,r,u){try{var s=n[r](u),o=s.value}catch(c){return void e(c)}s.done?i(o):Promise.resolve(o).then(t,a)}function u(n){return function(){var i=this,e=arguments;return new Promise((function(t,a){var u=n.apply(i,e);function s(n){r(u,t,a,s,o,"next",n)}function o(n){r(u,t,a,s,o,"throw",n)}s(void 0)}))}}var s=function(){Promise.all([e.e("common/vendor"),e.e("components/w-picker/w-picker")]).then(function(){return resolve(e("a588"))}.bind(null,e)).catch(e.oe)},o={data:function(){return{ruleForm:{dingdanbianhao:this.getUUID(),caipinmingcheng:"",caipinfenlei:"",tupian:"",caipinjiage:"",xiadanshuliang:"",zongjine:"",xiadanshijian:"",beizhu:"",yonghuming:"",lianxidianhua:"",songcandizhi:"",sfsh:"",shhf:"",ispay:"",userid:""},user:{},ro:{dingdanbianhao:!1,caipinmingcheng:!1,caipinfenlei:!1,tupian:!1,caipinjiage:!1,xiadanshuliang:!1,zongjine:!1,xiadanshijian:!1,beizhu:!1,yonghuming:!1,lianxidianhua:!1,songcandizhi:!1,sfsh:!1,shhf:!1,ispay:!1,userid:!1}}},components:{wPicker:s},computed:{zongjine:{get:function(){return 1*this.ruleForm.caipinjiage*this.ruleForm.xiadanshuliang}}},onLoad:function(){var i=u(t.default.mark((function i(e){var a,r,u,s;return t.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:return a=n.getStorageSync("nowTable"),i.next=3,this.$api.session(a);case 3:if(r=i.sent,this.user=r.data,this.ruleForm.yonghuming=this.user.yonghuming,this.ruleForm.lianxidianhua=this.user.lianxidianhua,this.ruleForm.userid=n.getStorageSync("userid"),e.refid&&(this.ruleForm.refid=e.refid),!e.id){i.next=15;break}return this.ruleForm.id=e.id,i.next=13,this.$api.info("dingdanxinxi",this.ruleForm.id);case 13:r=i.sent,this.ruleForm=r.data;case 15:if(!e.cross){i.next=74;break}u=n.getStorageSync("crossObj"),i.t0=t.default.keys(u);case 18:if((i.t1=i.t0()).done){i.next=74;break}if(s=i.t1.value,"dingdanbianhao"!=s){i.next=24;break}return this.ruleForm.dingdanbianhao=u[s],this.ro.dingdanbianhao=!0,i.abrupt("continue",18);case 24:if("caipinmingcheng"!=s){i.next=28;break}return this.ruleForm.caipinmingcheng=u[s],this.ro.caipinmingcheng=!0,i.abrupt("continue",18);case 28:if("caipinfenlei"!=s){i.next=32;break}return this.ruleForm.caipinfenlei=u[s],this.ro.caipinfenlei=!0,i.abrupt("continue",18);case 32:if("tupian"!=s){i.next=36;break}return this.ruleForm.tupian=u[s],this.ro.tupian=!0,i.abrupt("continue",18);case 36:if("caipinjiage"!=s){i.next=40;break}return this.ruleForm.caipinjiage=u[s],this.ro.caipinjiage=!0,i.abrupt("continue",18);case 40:if("xiadanshuliang"!=s){i.next=44;break}return this.ruleForm.xiadanshuliang=u[s],this.ro.xiadanshuliang=!0,i.abrupt("continue",18);case 44:if("zongjine"!=s){i.next=48;break}return this.ruleForm.zongjine=u[s],this.ro.zongjine=!0,i.abrupt("continue",18);case 48:if("xiadanshijian"!=s){i.next=52;break}return this.ruleForm.xiadanshijian=u[s],this.ro.xiadanshijian=!0,i.abrupt("continue",18);case 52:if("beizhu"!=s){i.next=56;break}return this.ruleForm.beizhu=u[s],this.ro.beizhu=!0,i.abrupt("continue",18);case 56:if("yonghuming"!=s){i.next=60;break}return this.ruleForm.yonghuming=u[s],this.ro.yonghuming=!0,i.abrupt("continue",18);case 60:if("lianxidianhua"!=s){i.next=64;break}return this.ruleForm.lianxidianhua=u[s],this.ro.lianxidianhua=!0,i.abrupt("continue",18);case 64:if("songcandizhi"!=s){i.next=68;break}return this.ruleForm.songcandizhi=u[s],this.ro.songcandizhi=!0,i.abrupt("continue",18);case 68:if("userid"!=s){i.next=72;break}return this.ruleForm.userid=u[s],this.ro.userid=!0,i.abrupt("continue",18);case 72:i.next=18;break;case 74:this.styleChange();case 75:case"end":return i.stop()}}),i,this)})));function e(n){return i.apply(this,arguments)}return e}(),methods:{styleChange:function(){this.$nextTick((function(){}))},xiadanshijianConfirm:function(n){console.log(n),this.ruleForm.xiadanshijian=n.result,this.$forceUpdate()},tupianTap:function(){var n=this;this.$api.upload((function(i){n.ruleForm.tupian=n.$base.url+"upload/"+i.file,n.$forceUpdate(),n.$nextTick((function(){n.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=u(t.default.mark((function n(){return t.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(this.ruleForm.zongjine=this.zongjine,!this.ruleForm.caipinjiage||this.$validate.isIntNumer(this.ruleForm.caipinjiage)){n.next=4;break}return this.$utils.msg("菜品价格应输入整数"),n.abrupt("return");case 4:if(!this.ruleForm.xiadanshuliang||this.$validate.isIntNumer(this.ruleForm.xiadanshuliang)){n.next=7;break}return this.$utils.msg("下单数量应输入整数"),n.abrupt("return");case 7:if(this.ruleForm.userid){n.next=10;break}return this.$utils.msg("用户id不能为空"),n.abrupt("return");case 10:if(!this.ruleForm.id){n.next=15;break}return n.next=13,this.$api.update("dingdanxinxi",this.ruleForm);case 13:n.next=17;break;case 15:return n.next=17,this.$api.add("dingdanxinxi",this.ruleForm);case 17:this.$utils.msgBack("提交成功");case 18:case"end":return n.stop()}}),n,this)})));function i(){return n.apply(this,arguments)}return i}(),optionsChange:function(n){this.index=n.target.value},bindDateChange:function(n){this.date=n.target.value},getDate:function(n){var i=new Date,e=i.getFullYear(),t=i.getMonth()+1,a=i.getDate();return"start"===n?e-=60:"end"===n&&(e+=2),t=t>9?t:"0"+t,a=a>9?a:"0"+a,"".concat(e,"-").concat(t,"-").concat(a)},toggleTab:function(n){this.$refs[n].show()}}};i.default=o}).call(this,e("543d")["default"])},fe16:function(n,i,e){}},[["78b8","common/runtime","common/vendor"]]]);
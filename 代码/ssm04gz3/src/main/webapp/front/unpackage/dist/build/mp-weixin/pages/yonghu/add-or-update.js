(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/yonghu/add-or-update"],{"08aa":function(n,e,t){"use strict";t.r(e);var r=t("819a"),i=t.n(r);for(var a in r)"default"!==a&&function(n){t.d(e,n,(function(){return r[n]}))}(a);e["default"]=i.a},"0972":function(n,e,t){"use strict";var r;t.d(e,"b",(function(){return i})),t.d(e,"c",(function(){return a})),t.d(e,"a",(function(){return r}));var i=function(){var n=this,e=n.$createElement;n._self._c},a=[]},"4d72":function(n,e,t){"use strict";(function(n){t("c262");r(t("66fd"));var e=r(t("af6f"));function r(n){return n&&n.__esModule?n:{default:n}}n(e.default)}).call(this,t("543d")["createPage"])},"819a":function(n,e,t){"use strict";(function(n){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var r=i(t("a34a"));function i(n){return n&&n.__esModule?n:{default:n}}function a(n,e,t,r,i,a,u){try{var o=n[a](u),c=o.value}catch(s){return void t(s)}o.done?e(c):Promise.resolve(c).then(r,i)}function u(n){return function(){var e=this,t=arguments;return new Promise((function(r,i){var u=n.apply(e,t);function o(n){a(u,r,i,o,c,"next",n)}function c(n){a(u,r,i,o,c,"throw",n)}o(void 0)}))}}var o=function(){Promise.all([t.e("common/vendor"),t.e("components/w-picker/w-picker")]).then(function(){return resolve(t("eea2"))}.bind(null,t)).catch(t.oe)},c={data:function(){return{ruleForm:{yonghuming:"",mima:"",xingming:"",xingbie:"",touxiang:"",lianxidianhua:""},xingbieOptions:[],xingbieIndex:0,user:{},ro:{yonghuming:!1,mima:!1,xingming:!1,xingbie:!1,touxiang:!1,lianxidianhua:!1}}},components:{wPicker:o},computed:{},onLoad:function(e){var t=this;return u(r.default.mark((function i(){var a,u,o,c;return r.default.wrap((function(i){while(1)switch(i.prev=i.next){case 0:return a=n.getStorageSync("nowTable"),i.next=3,t.$api.session(a);case 3:if(u=i.sent,t.user=u.data,t.xingbieOptions="男,女".split(","),t.ruleForm.userid=n.getStorageSync("userid"),e.refid&&(t.ruleForm.refid=e.refid),!e.id){i.next=14;break}return t.ruleForm.id=e.id,i.next=12,t.$api.info("yonghu",t.ruleForm.id);case 12:u=i.sent,t.ruleForm=u.data;case 14:if(!e.cross){i.next=45;break}o=n.getStorageSync("crossObj"),i.t0=r.default.keys(o);case 17:if((i.t1=i.t0()).done){i.next=45;break}if(c=i.t1.value,"yonghuming"!=c){i.next=23;break}return t.ruleForm.yonghuming=o[c],t.ro.yonghuming=!0,i.abrupt("continue",17);case 23:if("mima"!=c){i.next=27;break}return t.ruleForm.mima=o[c],t.ro.mima=!0,i.abrupt("continue",17);case 27:if("xingming"!=c){i.next=31;break}return t.ruleForm.xingming=o[c],t.ro.xingming=!0,i.abrupt("continue",17);case 31:if("xingbie"!=c){i.next=35;break}return t.ruleForm.xingbie=o[c],t.ro.xingbie=!0,i.abrupt("continue",17);case 35:if("touxiang"!=c){i.next=39;break}return t.ruleForm.touxiang=o[c],t.ro.touxiang=!0,i.abrupt("continue",17);case 39:if("lianxidianhua"!=c){i.next=43;break}return t.ruleForm.lianxidianhua=o[c],t.ro.lianxidianhua=!0,i.abrupt("continue",17);case 43:i.next=17;break;case 45:t.styleChange();case 46:case"end":return i.stop()}}),i)})))()},methods:{styleChange:function(){this.$nextTick((function(){}))},xingbieChange:function(n){this.xingbieIndex=n.target.value,this.ruleForm.xingbie=this.xingbieOptions[this.xingbieIndex]},touxiangTap:function(){var n=this;this.$api.upload((function(e){n.ruleForm.touxiang=n.$base.url+"upload/"+e.file,n.$forceUpdate(),n.$nextTick((function(){n.styleChange()}))}))},getUUID:function(){return(new Date).getTime()},onSubmitTap:function(){var n=this;return u(r.default.mark((function e(){return r.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(n.ruleForm.yonghuming){e.next=3;break}return n.$utils.msg("用户名不能为空"),e.abrupt("return");case 3:if(n.ruleForm.mima){e.next=6;break}return n.$utils.msg("密码不能为空"),e.abrupt("return");case 6:if(n.ruleForm.xingming){e.next=9;break}return n.$utils.msg("姓名不能为空"),e.abrupt("return");case 9:if(!n.ruleForm.id){e.next=14;break}return e.next=12,n.$api.update("yonghu",n.ruleForm);case 12:e.next=16;break;case 14:return e.next=16,n.$api.add("yonghu",n.ruleForm);case 16:n.$utils.msgBack("提交成功");case 17:case"end":return e.stop()}}),e)})))()},optionsChange:function(n){this.index=n.target.value},bindDateChange:function(n){this.date=n.target.value},getDate:function(n){var e=new Date,t=e.getFullYear(),r=e.getMonth()+1,i=e.getDate();return"start"===n?t-=60:"end"===n&&(t+=2),r=r>9?r:"0"+r,i=i>9?i:"0"+i,"".concat(t,"-").concat(r,"-").concat(i)},toggleTab:function(n){this.$refs[n].show()}}};e.default=c}).call(this,t("543d")["default"])},"8d17":function(n,e,t){},af6f:function(n,e,t){"use strict";t.r(e);var r=t("0972"),i=t("08aa");for(var a in i)"default"!==a&&function(n){t.d(e,n,(function(){return i[n]}))}(a);t("b9b9");var u,o=t("f0c5"),c=Object(o["a"])(i["default"],r["b"],r["c"],!1,null,"0bdc5338",null,!1,r["a"],u);e["default"]=c.exports},b9b9:function(n,e,t){"use strict";var r=t("8d17"),i=t.n(r);i.a}},[["4d72","common/runtime","common/vendor"]]]);
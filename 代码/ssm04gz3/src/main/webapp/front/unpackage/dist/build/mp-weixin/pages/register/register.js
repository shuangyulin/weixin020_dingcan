(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/register/register"],{"07c2":function(e,n,t){"use strict";(function(e){Object.defineProperty(n,"__esModule",{value:!0}),n.default=void 0;var r=u(t("a34a"));function u(e){return e&&e.__esModule?e:{default:e}}function i(e,n,t,r,u,i,a){try{var o=e[i](a),c=o.value}catch(s){return void t(s)}o.done?n(c):Promise.resolve(c).then(r,u)}function a(e){return function(){var n=this,t=arguments;return new Promise((function(r,u){var a=e.apply(n,t);function o(e){i(a,r,u,o,c,"next",e)}function c(e){i(a,r,u,o,c,"throw",e)}o(void 0)}))}}var o={data:function(){return{yonghuxingbieOptions:[],yonghuxingbieIndex:0,ruleForm:{},tableName:""}},onLoad:function(){var n=this;return a(r.default.mark((function t(){var u;return r.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:[],u=e.getStorageSync("loginTable"),n.tableName=u,"yonghu"==n.tableName&&(n.yonghuxingbieOptions="男,女".split(","),n.ruleForm.xingbie=n.yonghuxingbieOptions[0]),n.styleChange();case 5:case"end":return t.stop()}}),t)})))()},methods:{yonghuxingbieChange:function(e){this.yonghuxingbieIndex=e.target.value,this.ruleForm.xingbie=this.yonghuxingbieOptions[this.yonghuxingbieIndex]},styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},register:function(){var e=this;return a(r.default.mark((function n(){return r.default.wrap((function(n){while(1)switch(n.prev=n.next){case 0:if(e.ruleForm.yonghuming||"yonghu"!=e.tableName){n.next=3;break}return e.$utils.msg("用户名不能为空"),n.abrupt("return");case 3:if(e.ruleForm.mima||"yonghu"!=e.tableName){n.next=6;break}return e.$utils.msg("密码不能为空"),n.abrupt("return");case 6:if(e.ruleForm.xingming||"yonghu"!=e.tableName){n.next=9;break}return e.$utils.msg("姓名不能为空"),n.abrupt("return");case 9:if("yonghu"!=e.tableName||!e.ruleForm.lianxidianhua||e.$validate.isMobile(e.ruleForm.lianxidianhua)){n.next=12;break}return e.$utils.msg("联系电话应输入手机格式"),n.abrupt("return");case 12:return n.next=14,e.$api.register("".concat(e.tableName),e.ruleForm);case 14:e.$utils.msgBack("注册成功");case 16:case"end":return n.stop()}}),n)})))()}}};n.default=o}).call(this,t("543d")["default"])},"15cf":function(e,n,t){},2710:function(e,n,t){"use strict";var r;t.d(n,"b",(function(){return u})),t.d(n,"c",(function(){return i})),t.d(n,"a",(function(){return r}));var u=function(){var e=this,n=e.$createElement;e._self._c},i=[]},3180:function(e,n,t){"use strict";var r=t("15cf"),u=t.n(r);u.a},9678:function(e,n,t){"use strict";(function(e){t("c262");r(t("66fd"));var n=r(t("c0a4"));function r(e){return e&&e.__esModule?e:{default:e}}e(n.default)}).call(this,t("543d")["createPage"])},c0a4:function(e,n,t){"use strict";t.r(n);var r=t("2710"),u=t("e20b");for(var i in u)"default"!==i&&function(e){t.d(n,e,(function(){return u[e]}))}(i);t("3180");var a,o=t("f0c5"),c=Object(o["a"])(u["default"],r["b"],r["c"],!1,null,"6a3b7420",null,!1,r["a"],a);n["default"]=c.exports},e20b:function(e,n,t){"use strict";t.r(n);var r=t("07c2"),u=t.n(r);for(var i in r)"default"!==i&&function(e){t.d(n,e,(function(){return r[e]}))}(i);n["default"]=u.a}},[["9678","common/runtime","common/vendor"]]]);
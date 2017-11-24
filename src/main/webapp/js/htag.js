! function(e) {
	"function" == typeof define && define.amd ? define(["jquery"], function(r) {
		return e(r)
	}) : "object" == typeof module && "object" == typeof module.exports ? module.exports = e(require("jquery")) : e(window.jQuery)
}(function(e) {
	"use strict";

	function r(e) {
		void 0 === e && (e = window.navigator.userAgent), e = e.toLowerCase();
		var r = /(edge)\/([\w.]+)/.exec(e) || /(opr)[\/]([\w.]+)/.exec(e) || /(chrome)[ \/]([\w.]+)/.exec(e) || /(iemobile)[\/]([\w.]+)/.exec(e) || /(version)(applewebkit)[ \/]([\w.]+).*(safari)[ \/]([\w.]+)/.exec(e) || /(webkit)[ \/]([\w.]+).*(version)[ \/]([\w.]+).*(safari)[ \/]([\w.]+)/.exec(e) || /(webkit)[ \/]([\w.]+)/.exec(e) || /(opera)(?:.*version|)[ \/]([\w.]+)/.exec(e) || /(msie) ([\w.]+)/.exec(e) || e.indexOf("trident") >= 0 && /(rv)(?::| )([\w.]+)/.exec(e) || e.indexOf("compatible") < 0 && /(mozilla)(?:.*? rv:([\w.]+)|)/.exec(e) || [],
			t = /(ipad)/.exec(e) || /(ipod)/.exec(e) || /(windows phone)/.exec(e) || /(iphone)/.exec(e) || /(kindle)/.exec(e) || /(silk)/.exec(e) || /(android)/.exec(e) || /(win)/.exec(e) || /(mac)/.exec(e) || /(linux)/.exec(e) || /(cros)/.exec(e) || /(playbook)/.exec(e) || /(bb)/.exec(e) || /(blackberry)/.exec(e) || [],
			o = {},
			a = {
				browser: r[5] || r[3] || r[1] || "",
				version: r[2] || r[4] || "0",
				versionNumber: r[4] || r[2] || "0",
				platform: t[0] || ""
			};
		if(a.browser && (o[a.browser] = !0, o.version = a.version, o.versionNumber = parseInt(a.versionNumber, 10)), a.platform && (o[a.platform] = !0), (o.android || o.bb || o.blackberry || o.ipad || o.iphone || o.ipod || o.kindle || o.playbook || o.silk || o["windows phone"]) && (o.mobile = !0), (o.cros || o.mac || o.linux || o.win) && (o.desktop = !0), (o.chrome || o.opr || o.safari) && (o.webkit = !0), o.rv || o.iemobile) {
			var n = "msie";
			a.browser = n, o[n] = !0
		}
		if(o.edge) {
			delete o.edge;
			var i = "msedge";
			a.browser = i, o[i] = !0
		}
		if(o.safari && o.blackberry) {
			var s = "blackberry";
			a.browser = s, o[s] = !0
		}
		if(o.safari && o.playbook) {
			var u = "playbook";
			a.browser = u, o[u] = !0
		}
		if(o.bb) {
			var c = "blackberry";
			a.browser = c, o[c] = !0
		}
		if(o.opr) {
			var l = "opera";
			a.browser = l, o[l] = !0
		}
		if(o.safari && o.android) {
			var d = "android";
			a.browser = d, o[d] = !0
		}
		if(o.safari && o.kindle) {
			var f = "kindle";
			a.browser = f, o[f] = !0
		}
		if(o.safari && o.silk) {
			var g = "silk";
			a.browser = g, o[g] = !0
		}
		return o.name = a.browser, o.platform = a.platform, o
	}
	return window.jQBrowser = r(window.navigator.userAgent), window.jQBrowser.uaMatch = r, e && (e.browser = window.jQBrowser), window.jQBrowser
}),
function(e) {
	var r = function(e, r) {
			return e << r | e >>> 32 - r
		},
		t = function(e, r) {
			var t, o, a, n, i;
			return a = 2147483648 & e, n = 2147483648 & r, t = 1073741824 & e, o = 1073741824 & r, i = (1073741823 & e) + (1073741823 & r), t & o ? 2147483648 ^ i ^ a ^ n : t | o ? 1073741824 & i ? 3221225472 ^ i ^ a ^ n : 1073741824 ^ i ^ a ^ n : i ^ a ^ n
		},
		o = function(e, r, t) {
			return e & r | ~e & t
		},
		a = function(e, r, t) {
			return e & t | r & ~t
		},
		n = function(e, r, t) {
			return e ^ r ^ t
		},
		i = function(e, r, t) {
			return r ^ (e | ~t)
		},
		s = function(e, a, n, i, s, u, c) {
			return e = t(e, t(t(o(a, n, i), s), c)), t(r(e, u), a)
		},
		u = function(e, o, n, i, s, u, c) {
			return e = t(e, t(t(a(o, n, i), s), c)), t(r(e, u), o)
		},
		c = function(e, o, a, i, s, u, c) {
			return e = t(e, t(t(n(o, a, i), s), c)), t(r(e, u), o)
		},
		l = function(e, o, a, n, s, u, c) {
			return e = t(e, t(t(i(o, a, n), s), c)), t(r(e, u), o)
		},
		d = function(e) {
			for(var r, t = e.length, o = t + 8, a = (o - o % 64) / 64, n = 16 * (a + 1), i = Array(n - 1), s = 0, u = 0; u < t;) r = (u - u % 4) / 4, s = u % 4 * 8, i[r] = i[r] | e.charCodeAt(u) << s, u++;
			return r = (u - u % 4) / 4, s = u % 4 * 8, i[r] = i[r] | 128 << s, i[n - 2] = t << 3, i[n - 1] = t >>> 29, i
		},
		f = function(e) {
			var r, t, o = "",
				a = "";
			for(t = 0; t <= 3; t++) r = e >>> 8 * t & 255, a = "0" + r.toString(16), o += a.substr(a.length - 2, 2);
			return o
		},
		g = function(e) {
			e = e.replace(/\x0d\x0a/g, "\n");
			for(var r = "", t = 0; t < e.length; t++) {
				var o = e.charCodeAt(t);
				o < 128 ? r += String.fromCharCode(o) : o > 127 && o < 2048 ? (r += String.fromCharCode(o >> 6 | 192), r += String.fromCharCode(63 & o | 128)) : (r += String.fromCharCode(o >> 12 | 224), r += String.fromCharCode(o >> 6 & 63 | 128), r += String.fromCharCode(63 & o | 128))
			}
			return r
		};
	e.extend({
		md5_h: function(e) {
			var r, o, a, n, i, h, w, m, _, v = Array(),
				p = 7,
				b = 12,
				C = 17,
				x = 22,
				T = 5,
				G = 9,
				H = 14,
				k = 20,
				y = 4,
				A = 11,
				S = 16,
				D = 23,
				I = 6,
				N = 10,
				P = 15,
				Z = 21;
			for(e = g(e), v = d(e), h = 1732584193, w = 4023233417, m = 2562383102, _ = 271733878, r = 0; r < v.length; r += 16) o = h, a = w, n = m, i = _, h = s(h, w, m, _, v[r + 0], p, 3614090360), _ = s(_, h, w, m, v[r + 1], b, 3905402710), m = s(m, _, h, w, v[r + 2], C, 606105819), w = s(w, m, _, h, v[r + 3], x, 3250441966), h = s(h, w, m, _, v[r + 4], p, 4118548399), _ = s(_, h, w, m, v[r + 5], b, 1200080426), m = s(m, _, h, w, v[r + 6], C, 2821735955), w = s(w, m, _, h, v[r + 7], x, 4249261313), h = s(h, w, m, _, v[r + 8], p, 1770035416), _ = s(_, h, w, m, v[r + 9], b, 2336552879), m = s(m, _, h, w, v[r + 10], C, 4294925233), w = s(w, m, _, h, v[r + 11], x, 2304563134), h = s(h, w, m, _, v[r + 12], p, 1804603682), _ = s(_, h, w, m, v[r + 13], b, 4254626195), m = s(m, _, h, w, v[r + 14], C, 2792965006), w = s(w, m, _, h, v[r + 15], x, 1236535329), h = u(h, w, m, _, v[r + 1], T, 4129170786), _ = u(_, h, w, m, v[r + 6], G, 3225465664), m = u(m, _, h, w, v[r + 11], H, 643717713), w = u(w, m, _, h, v[r + 0], k, 3921069994), h = u(h, w, m, _, v[r + 5], T, 3593408605), _ = u(_, h, w, m, v[r + 10], G, 38016083), m = u(m, _, h, w, v[r + 15], H, 3634488961), w = u(w, m, _, h, v[r + 4], k, 3889429448), h = u(h, w, m, _, v[r + 9], T, 568446438), _ = u(_, h, w, m, v[r + 14], G, 3275163606), m = u(m, _, h, w, v[r + 3], H, 4107603335), w = u(w, m, _, h, v[r + 8], k, 1163531501), h = u(h, w, m, _, v[r + 13], T, 2850285829), _ = u(_, h, w, m, v[r + 2], G, 4243563512), m = u(m, _, h, w, v[r + 7], H, 1735328473), w = u(w, m, _, h, v[r + 12], k, 2368359562), h = c(h, w, m, _, v[r + 5], y, 4294588738), _ = c(_, h, w, m, v[r + 8], A, 2272392833), m = c(m, _, h, w, v[r + 11], S, 1839030562), w = c(w, m, _, h, v[r + 14], D, 4259657740), h = c(h, w, m, _, v[r + 1], y, 2763975236), _ = c(_, h, w, m, v[r + 4], A, 1272893353), m = c(m, _, h, w, v[r + 7], S, 4139469664), w = c(w, m, _, h, v[r + 10], D, 3200236656), h = c(h, w, m, _, v[r + 13], y, 681279174), _ = c(_, h, w, m, v[r + 0], A, 3936430074), m = c(m, _, h, w, v[r + 3], S, 3572445317), w = c(w, m, _, h, v[r + 6], D, 76029189), h = c(h, w, m, _, v[r + 9], y, 3654602809), _ = c(_, h, w, m, v[r + 12], A, 3873151461), m = c(m, _, h, w, v[r + 15], S, 530742520), w = c(w, m, _, h, v[r + 2], D, 3299628645), h = l(h, w, m, _, v[r + 0], I, 4096336452), _ = l(_, h, w, m, v[r + 7], N, 1126891415), m = l(m, _, h, w, v[r + 14], P, 2878612391), w = l(w, m, _, h, v[r + 5], Z, 4237533241), h = l(h, w, m, _, v[r + 12], I, 1700485571), _ = l(_, h, w, m, v[r + 3], N, 2399980690), m = l(m, _, h, w, v[r + 10], P, 4293915773), w = l(w, m, _, h, v[r + 1], Z, 2240044497), h = l(h, w, m, _, v[r + 8], I, 1873313359), _ = l(_, h, w, m, v[r + 15], N, 4264355552), m = l(m, _, h, w, v[r + 6], P, 2734768916), w = l(w, m, _, h, v[r + 13], Z, 1309151649), h = l(h, w, m, _, v[r + 4], I, 4149444226), _ = l(_, h, w, m, v[r + 11], N, 3174756917), m = l(m, _, h, w, v[r + 2], P, 718787259), w = l(w, m, _, h, v[r + 9], Z, 3951481745), h = t(h, o), w = t(w, a), m = t(m, n), _ = t(_, i);
			var j = f(h) + f(w) + f(m) + f(_);
			return j.toLowerCase()
		}
	})
}(jQuery);
var G_HTAG_Domain_CNSZHTC2015 = ("https:" == document.location.protocol ? "https://htag" : "http://htag") + ".haituncun.com",
	G_HTAG_PageID_CNSZHTC2015 = "",
	G_HTAG_PageEnterTime_CNSZHTC2015 = Math.ceil((new Date).getTime() / 1e3),
	G_HTAG_PageURL_CNSZHTC2015 = window.location.href,
	G_HTAG_UTMCID_CNSZHTC2015 = "";
! function(e) {
	var r = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".split("");
	if(Math.uuid = function(e, t) {
			var o, a = r,
				n = [];
			if(t = t || a.length, e)
				for(o = 0; o < e; o++) n[o] = a[0 | Math.random() * t];
			else {
				var i;
				for(n[8] = n[13] = n[18] = n[23] = "-", n[14] = "4", o = 0; o < 36; o++) n[o] || (i = 0 | 16 * Math.random(), n[o] = a[19 == o ? 3 & i | 8 : i])
			}
			return n.join("")
		}, Math.uuidFast = function() {
			for(var e, t = r, o = new Array(36), a = 0, n = 0; n < 36; n++) 8 == n || 13 == n || 18 == n || 23 == n ? o[n] = "-" : 14 == n ? o[n] = "4" : (a <= 2 && (a = 33554432 + 16777216 * Math.random() | 0), e = 15 & a, a >>= 4, o[n] = t[19 == n ? 3 & e | 8 : e]);
			return o.join("")
		}, Math.uuidCompact = function() {
			return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function(e) {
				var r = 16 * Math.random() | 0,
					t = "x" == e ? r : 3 & r | 8;
				return t.toString(16)
			})
		}, Date.prototype.Formath = function(e) {
			var r = this.getHours(),
				t = e,
				o = {
					"M+": this.getMonth() + 1,
					"d+": this.getDate(),
					"h+": r % 12 == 0 ? 12 : r % 12,
					"H+": this.getHours(),
					"m+": this.getMinutes(),
					"s+": this.getSeconds(),
					"q+": Math.floor((this.getMonth() + 3) / 3),
					S: this.getMilliseconds()
				};
			/(y+)/.test(e) && (e = e.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length)));
			for(var a in o) new RegExp("(" + a + ")").test(e) && (e = e.replace(RegExp.$1, 1 == RegExp.$1.length ? o[a] : ("00" + o[a]).substr(("" + o[a]).length)));
			return r > 12 && t.indexOf("h") > 0 ? e + " PM" : e
		}, e.extend({
			getUrlVars: function() {
				for(var e, r = [], t = window.location.href.slice(window.location.href.indexOf("?") + 1).split("&"), o = 0; o < t.length; o++) e = t[o].split("="), r.push(e[0]), r[e[0]] = e[1];
				return r
			},
			getUrlVar: function(r) {
				return e.getUrlVars()[r]
			},
			getDomain: function(e) {
				return e ? (e.indexOf("://") != -1 && (e = e.substr(e.indexOf("://") + 3)), e.indexOf("/") != -1 && (e = e.substr(0, e.indexOf("/"))), e = e.toLowerCase()) : ""
			},
			isNullVar: function(e) {
				return !e && 0 !== e && "boolean" != typeof e
			},
			htagLogOrder: function(e) {
				try {
					var r = "";
					"string" == typeof e ? r = e : "object" == typeof e && (r = JSON.stringify(e)), o.log(G_HTAG_PageID_CNSZHTC2015, "order", o.getAllInfo({
						order: r
					}), G_HTAG_Domain_CNSZHTC2015 + "/ha_order.gif")
				} catch(t) {}
			}
		}), "undefined" == typeof t) var t = new Object;
	t.getPlayerVersion = function() {
		var e = new t.PlayerVersion([0, 0, 0]);
		if(navigator.plugins && navigator.mimeTypes.length) {
			var r = navigator.plugins["Shockwave Flash"];
			r && r.description && (e = new t.PlayerVersion(r.description.replace(/([a-zA-Z]|\s)+/, "").replace(/(\s+r|\s+b[0-9]+)/, ".").split(".")))
		} else if(navigator.userAgent && navigator.userAgent.indexOf("Windows CE") >= 0)
			for(var o = 1, a = 3; o;) try {
				a++, o = new ActiveXObject("ShockwaveFlash.ShockwaveFlash." + a), e = new t.PlayerVersion([a, 0, 0])
			} catch(n) {
				o = null
			} else {
				try {
					var o = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.7")
				} catch(n) {
					try {
						var o = new ActiveXObject("ShockwaveFlash.ShockwaveFlash.6");
						e = new t.PlayerVersion([6, 0, 21]), o.AllowScriptAccess = "always"
					} catch(n) {
						if(6 == e.major) return e
					}
					try {
						o = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")
					} catch(n) {}
				}
				null != o && (e = new t.PlayerVersion(o.GetVariable("$version").split(" ")[1].split(",")))
			}
		return e
	}, t.PlayerVersion = function(e) {
		this.major = null != e[0] ? parseInt(e[0]) : 0, this.minor = null != e[1] ? parseInt(e[1]) : 0, this.rev = null != e[2] ? parseInt(e[2]) : 0
	};
	var o = {
		version: "1.0.0",
		hasInit: 0,
		arrImg: [],
		maxLength: 2,
		taskQueue: [],
		init: function() {
			var r = this;
			if(!r.hasInit && 0 != e("body").size()) {
				navigator.userAgent.match(/iPhone|iPad|iPod/i) && e("body").css("cursor", "pointer"), e("body").bind("mousedown", function(t) {
					for(var o = e(t.target), a = ""; o.length > 0;) {
						if(o[0] == e("body")[0]) {
							try {
								var n = o.attr("data-tag");
								n && (a = "" == a ? n : n + "." + a)
							} catch(i) {}
							break
						}
						try {
							var s = o.attr("data-tag");
							s && (a = "" == a ? s : s + "." + a)
						} catch(i) {}
						o = o.parent()
					}
					for(var u = e(t.target); u.length > 0 && u[0] != e("body")[0];) {
						try {
							var c = u.attr("href") || u.attr("url"),
								l = u.attr("oldhref") || u.attr("oldurl");
							if(c) {
								var d = c.toLowerCase().replace(/(^\s*)/g, "");
								!l && "" != a && d.indexOf("#") < 0 && d.indexOf("javascript:") < 0 && (c.indexOf("?") > 0 ? u.attr("href") ? u.attr("href", c + "&itag=" + a) : u.attr("url", c + "&itag=" + a) : u.attr("href") ? u.attr("href", c + "?itag=" + a) : u.attr("url", c + "?itag=" + a), u.attr("href") ? u.attr("oldhref", c) : u.attr("oldurl", c)), G_HTAG_PageID_CNSZHTC2015 && "" != G_HTAG_PageID_CNSZHTC2015 && (r.log(G_HTAG_PageID_CNSZHTC2015, "close", null, G_HTAG_Domain_CNSZHTC2015 + "/ha0.gif"), G_HTAG_PageID_CNSZHTC2015 = "");
								break
							}
						} catch(i) {}
						u = u.parent()
					}
				}), r.hasInit = 1;
				var t = e.cookie("_uuid") || "";
				null != t && "undefined" != t && "" != t || (t = Math.uuidFast(), e.cookie("_uuid", t, {
					expires: 2e4,
					path: "/",
					domain: e.getDomain(document.domain)
				}));
				var o = e.getUrlVar("itag");
				o && "" != o && e.cookie("_itag", o, {
					path: "/",
					expires: 30,
					domain: e.getDomain(document.domain)
				});
				var a = e.getUrlVar("wtag");
				if(a && "" != a) {
					var n = document.referrer || "";
					n && "" != n ? e.getDomain(document.domain) != e.getDomain(n) && e.cookie("_wtag", a, {
						path: "/",
						expires: 30,
						domain: e.getDomain(document.domain)
					}) : e.cookie("_wtag", a, {
						path: "/",
						expires: 30,
						domain: e.getDomain(document.domain)
					})
				}
				var i = e.md5_h(e.cookie("_uuid") + window.location.href + (new Date).getTime());
				if(G_HTAG_PageID_CNSZHTC2015 = i, G_HTAG_UTMCID_CNSZHTC2015 = "_utmc_" + e.md5_h((e.cookie("_uuid") || "") + G_HTAG_PageURL_CNSZHTC2015), e.cookie(G_HTAG_UTMCID_CNSZHTC2015));
				else {
					var s = (e.cookie(G_HTAG_UTMCID_CNSZHTC2015, !0, {
						expires: 1 / 24 / 60 / 30,
						path: "/",
						domain: e.getDomain(document.domain)
					}), e.cookie("_htag_order"));
					s = "null" == s ? "" : e.isNullVar(s) ? "" : s, s ? r.log(G_HTAG_PageID_CNSZHTC2015, "order", r.getAllInfo(), G_HTAG_Domain_CNSZHTC2015 + "/ha_order.gif") : r.log(G_HTAG_PageID_CNSZHTC2015, "open", r.getAllInfo())
				}
				e(window).bind("beforeunload", function(t) {
					e.cookie(G_HTAG_UTMCID_CNSZHTC2015) || G_HTAG_PageID_CNSZHTC2015 && "" != G_HTAG_PageID_CNSZHTC2015 && (r.log(G_HTAG_PageID_CNSZHTC2015, "close", null, G_HTAG_Domain_CNSZHTC2015 + "/ha0.gif"), setTimeout(function() {}, 2e3))
				}), e(window).bind("unload", function(r) {
					e.cookie(G_HTAG_UTMCID_CNSZHTC2015) || G_HTAG_PageID_CNSZHTC2015 && "" != G_HTAG_PageID_CNSZHTC2015 && setTimeout(function() {}, 2e3)
				})
			}
		},
		log: function(e, r, t, o) {
			var a, n, i = this,
				s = o || G_HTAG_Domain_CNSZHTC2015 + "/ha.gif",
				u = "";
			if(t && null != t || (t = i.getAllInfo()), null != t)
				for(a in t) t.hasOwnProperty(a) && (n = t[a], u = "&" + a + "=" + encodeURIComponent(n) + u);
			i.send(s + "?t=" + (new Date).getTime() + "&pos=" + escape(encodeURIComponent(e)) + "&opr=" + escape(encodeURIComponent(r)) + u)
		},
		send: function(r) {
			if("undefined" != typeof r && "" != r) {
				var t, o, a, n = this,
					i = 0,
					s = -1;
				a = n.arrImg, i = a.length;
				for(var u = 0; u < i; u++)
					if(0 == a[u].f) {
						s = u;
						break
					}
				if(s == -1) {
					if(i == n.maxLength) return void n.taskQueue.push(r);
					t = e(new Image), a.push({
						f: 1,
						img: t
					}), s = 0 == i ? 0 : i
				} else t = a[s].img;
				a[s].f = 1, t.data("vid", s), o = function() {
					var r = e(this).data("vid");
					r >= 0 && (a[r].f = 0), n.taskQueue.length > 0 && n.send(n.taskQueue.shift())
				}, t.unbind().load(o).error(o), e(t).attr("src", r)
			}
		},
		getAllInfo: function(r) {
			var t = this,
				o = {};
			if(e.cookie("_uuid")) o.uuid = e.cookie("_uuid");
			else {
				var a = Math.uuidFast();
				e.cookie("_uuid", a, {
					expires: 2e4,
					path: "/",
					domain: e.getDomain(document.domain)
				}), o.uuid = a
			}
			if(document && (o.ref = document.referrer || ""), window && window.screen && (o.scwh = (window.screen.width || 0) + "_" + (window.screen.height || 0)), o.flsh = t.getFlashVersion(), o.java = t.getJavaEnabled(), o.lang = t.getLang(), o.bros = t.getBrowserInfo(), o.js_v = t.version, o.time = (new Date).Formath("yyyy-MM-dd HH:mm:ss"), G_haq)
				for(var n in G_haq) switch(G_haq[n][0]) {
					case "_setAccount":
						o.acot = G_haq[n][1]
				}
			o.uptm = 5, G_HTAG_PageEnterTime_CNSZHTC2015 && (o.uptm = Math.ceil((new Date).getTime() / 1e3) - parseInt(G_HTAG_PageEnterTime_CNSZHTC2015));
			var i = e.cookie("_itag");
			i = "null" == i ? "" : i, o.itag = e.isNullVar(i) ? "" : i;
			var s = e.cookie("_wtag");
			s = "null" == s ? "" : s, o.wtag = e.isNullVar(s) ? "" : s, o.url = G_HTAG_PageURL_CNSZHTC2015;
			var u = e.cookie("_htag_order");
			if(u = "null" == u ? "" : e.isNullVar(u) ? "" : u, u && (o.order = u, e.cookie("_htag_order", null, {
					path: "/",
					domain: e.getDomain(document.domain)
				})), r && null != r) {
				if("object" == typeof r)
					for(var c in r) o[c] = r[c]
			} else;
			return o
		},
		getBrowserInfo: function() {
			var r = "other",
				t = navigator.userAgent.toLowerCase();
			return e.browser.msie ? r = "IE" : /ucweb/.test(t) ? r = "uc" : /bidubrowser/.test(t) ? r = "baidu" : /metasr/.test(t) ? r = "sougou" : /lbbrowser/.test(t) ? r = "lb" : /qqbrowser/.test(t) ? r = "qq" : /maxthon/.test(t) ? r = "maxthon" : /360se/.test(t) ? r = "360se" : /360ee/.test(t) ? r = "360ee" : e.browser.chrome ? r = "chrome" : e.browser.safari ? r = "safari" : e.browser.webkit ? r = "webkit" : e.browser.mozilla ? r = "mozilla" : e.browser.opera && (r = "opera"), r + e.browser.version
		},
		getLang: function() {
			return navigator.language ? navigator.language : navigator.userLanguage || ""
		},
		getFlashVersion: function() {
			var e = t.getPlayerVersion();
			return e.major + "." + e.minor + "." + e.rev
		},
		getJavaEnabled: function() {
			return navigator.javaEnabled() ? 1 : 0
		}
	};
	o.init()
}(jQuery);
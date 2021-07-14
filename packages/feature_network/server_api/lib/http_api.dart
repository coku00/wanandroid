const baseUrl = 'https://www.wanandroid.com';

///方法：GET
// 参数：页码，拼接在连接中，page从0开始
const articleList = "/article/list/{page}/json";

///首页banner 方法：GET
const banner = "/banner/json";

///首页hotkey 方法：GET
const hotkey = "/hotkey/json";

const topArticle = "/article/top/json";

///username，password
const loginUrl = "/user/login";

///username,password,repassword
const registerUrl = "/user/register";

const logoutUrl = "/user/logout/json";

const collectUrl = "/lg/collect/list/{page}/json";

<template>
<div>
    <div style="background: rgb(247, 247, 247);">
       
            <div class="top">
                <div class="wrap top_wrap">
                    <div class="logo_pic_l">
                        <a href="//www.uzai.com">
                        <img src="//r02.uzaicdn.com/content/store/images/order/logo.png?imageView2/2/w/243/h/43">
                        </a>
                    </div>
                    <div class="logo_pic_r">
                        <em class="p_1  p_one curren_red"><span>01</span>填写信息并核对</em>
                        <em class="p_1 p_two"><span>02</span>在线支付</em>
                        <em class="p_1  p_three"><span>03</span>提交成功</em>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <!-- hh<form id="order_form" class="reserve_l fl"> -->
                    <input id="adultPrice" value="7899.0" type="hidden">
                    <input id="childPrice" value="7899.0" type="hidden">
                    <input id="payType" value="即时付款" type="hidden">
                    <input id="isTwPro" value="0" type="hidden">
                    <div class="order_meg">
                        <h3> &lt;巴厘岛自由行5晚7日&gt;选择合适的航班，敲定喜欢的酒店，约上三五好友，说走*走，探寻神秘的BALI，畅游人间天堂岛，你的旅程 </h3>
                        <div class="mesg_box">
                            <p>
                                <i class=" iconfont icon-yuandian"></i>
                                <span class="col9">行程名称：</span>
                                <em>
                                    巴厘岛自由行5晚7日
                                    【商品编号：<span id="tuanNo">TS1900735677</span>】
                                </em>
                            </p>
                            <p class="inlineblock">
                                <i class=" iconfont icon-yuandian"></i>
                                <span class="col9">出发城市：</span>
                                <em>北京</em>
                            </p>
                            <p class="inlineblock">
                                <i class=" iconfont icon-yuandian"></i>
                                <span class="col9">出发日期：</span>
                                <em id="goDate">2019-09-29</em>
                            </p>
                            <p class="inlineblock">
                                <i class=" iconfont icon-yuandian"></i>
                                <span class="col9">出行人数：</span>
                                <em id="adultNum">1</em>成人
                                <span id="child" style="display: none;">,<em id="childNum"></em>儿童</span>
                            </p>
                        </div>
                    </div>
                    <div class="order_nav">
                        <h1>联系人信息<input id="hdUsePoint" value="0" type="hidden"></h1>
                        <div class="order_pay_nav" id="auto_login">
                            <div class="meg-person">
                                <b class="letter3"><span>*</span>姓名</b>
                                <input type="text" id="contactName" placeholder="请输入姓名" class=" required" maxlength="11" data-valid="isNonEmpty" data-error="姓名不能为空" avalon-events="input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
                            </div>
                            <div class="meg-person tel">
                                <b class="letter2"><span>*</span>手机号码</b>
                                <input type="hidden" id="hdPhone" value="">
                                <input type="hidden" id="hdName" value="">
                                <input type="hidden" id="hdEmail" value="">
                                <input id="phone" placeholder="请输入手机号码" maxlength="11" type="text" class=" required" data-valid="isNonEmpty||isMobile" data-error="手机号码不能为空||手机号码不正确" avalon-events="input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
                                <div class="hide_tips_box">
                                    <i class="iconfont icon-question"></i>
                                    <div class="bubble">
                                        <p>此手机号为接收短信所用，作为订购与取票凭证，请准确填写。</p>
                                        <span></span>
                                    </div>
                                </div>
                            </div>


                            <div class="meg-person text_pic"></div>
                            <b><span>*</span>图片验证码</b>
                            <input id="contactImgCode" placeholder="请输入图形验证码" type="text" class="required" data-valid="isNonEmpty" data-error="图形验证码不能为空">
                            <div class="yzm_wrap"><img src="//tourbuy.uzai.com/verify/code?guid=764789"></div>
                            <i class="iconfont icon-shuaxin" onclick="hreshValidateCode()"></i>
                        </div>  
                        <div class="meg-person">
                            <b><span>*</span>短信验证码</b>
                            <input placeholder="请输入短信验证码" type="text" id="phone_yzm" data-valid="SendCodeIsTrue" data-error="短信验证码错误"><a class="pay_send_yzm pay_send_yzm_on" style="margin-left: 10px;">发送验证码</a><!--   此处移除pay_send_yzm_on这个class  则为不可点击的灰色按钮 -->
                        </div>
                        <div class="meg-person">
                            <b class="letter3">邮箱</b>
                            <input placeholder="请输入邮箱" type="text" id="contactEmail" maxlength="50" class="add_required" data-valid="isEmail" data-error="邮箱格式错误" avalon-events="input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
                            <span class="valid_message hide">邮箱格式不正确</span>
                        </div>
                        <div class="meg-person">
                            <b class="letter3">备注</b>
                            <textarea name="" placeholder="请备注您对产品的其他要求" id="remark" cols="30" rows="10" maxlength="200"></textarea>
                        </div>
                    </div>
                </div>
                <div class="order_nav">
                    <h1>出游人信息<span>为了更好的帮您完成行程预订，建议您可以填写出游人或稍后在“我的悠哉-我的订单”中补充出游人信息</span></h1>
                    <div class="order_pay_nav">
                        <div class="people_list">
                            <div class="people_masg" data-type="adult" data-sort="0" tid="0">
                                <h2 class="visitor">
                                    <b><span class="span1">出游人1</span><span class="span2">成人</span></b>
                                    <em class="clearall" cid="0"><i class="iconfont icon-qingkong"></i>清空</em>
                                    <span class="travel_user fr"><i class="iconfont icon-checkbank"></i> 存为常用联系人</span>
                                </h2>
                                <div class="meg-person">
                                    <b class="letter3"><span>*</span>姓名</b>
                                    <input placeholder="请输入姓名" name="tname" type="text" class="required" maxlength="11" data-valid="isNonEmpty" data-error="姓名不能为空" avalon-events="input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
                                </div>
                                <div class="meg-person tel">
                                    <b class="letter2">手机号码</b>
                                    <input placeholder="请输入11位手机号码" name="tphone" maxlength="11" type="text" class="add_required" data-valid="isMobile" data-error="手机格式不正确" avalon-events="input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3"><!-- <div class="hide_tips_box">
                                        <i class="iconfont icon-question"></i>
                                        <div class="bubble" style="display: none;">
                                            <p>此手机号为接收短信所用，作为订购与取票凭证，请准确填写。</p>
                                            <span></span>
                                        </div>

                                    </div> -->
                                </div>
                                <div class="meg-person" data-sort="0">
                                    <b class="letter2">证件类型</b>
                                    <select name="" id="" class="selection" avalon-events="change:echange_0_change40$event444841">
                                        <option value="0">请选择</option>
                                        <option value="2">护照</option>
                                        <option value="3">港澳通行证</option>
                                        <option value="4">台湾通行证</option>
                                        <option value="5">台胞证</option>
                                        <option value="8">回乡证</option>
                                    </select>
                                    <input class="user_num" placeholder="请输入证件号码" type="text" name="tcard" onblur="CardInfo(0,$(this))" maxlength="20">
                                </div>
                                <div class="meg-person">
                                    <b class="letter3"><span>*</span>性别</b>
                                    <div class="select_sex" data-sort="0">
                                        <i class="iconfont icon-check" change-class="iconfont icon-check"></i>男
                                        <i style="margin-left:30px;" class="iconfont icon-radio" change-class="iconfont icon-radio"></i>女
                                    </div>
                                </div>
                                <div class="meg-person">
                                    <b class="letter2"><span>*</span>出生日期</b>
                                    <input type="text" class="date_select required" name="tbirthday" data-valid="isNonEmpty" data-error="请选择出生日期" onclick="WdatePicker({'qsEnabled':false})" placeholder="请选择" readonly="readonly" avalon-events="input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="order_nav">
                    <h1>优惠方案<span>若您在下单后对出游时间或出游人数进行变更，将可能无法享受促销优惠。</span></h1>
                    <div class="order_pay_nav preferential">
                        <span class="btn_avtive on">优惠活动<i class="iconfont icon-jiagezhengxu"></i></span>
                        <em class="error_tips"></em>
                        <ul class="active_box yhfa_nav"><!--ms-for:($index,el) in preferent ial-->
                            <li onclick="choosePreferential($(this))" mutexcode="TAC0000000007" cmutexcode="TAC0000000011" sort="0" innermutex="0" tactictype="A" class="select" change-class="select">
                                <i class="iconfont icon-checkbank" change-class="iconfont icon-checkbank"></i>
                                <span>金秋放价 乐享满减</span>
                                <em>金秋放价 立减￥300</em>
                                <label>¥300</label>
                            </li><!--for252150139679--><!--ms-for-end:-->
                            
                        </ul>
                    </div>
                    <div style="clear: both"></div>
                </div>
                <div class="order_nav">
                    <h1>服务门店<span>请选择离您最近的服务门店提交旅客资料。如您附近无门店，请选择我们的客服中心。</span></h1>
                    <div class="order_pay_nav">
                        <div class="adress">
                            <p id="dStoreName">北京呼叫中心</p>
                            <a onclick="openTank('.store_ad')">
                                <i class=" iconfont icon-zuobiao"></i>
                                <span>选择门店</span></a>
                                <div class="">
                                    <b>地址：<span id="dAddrss">北京市朝阳区朝阳公园路8号（朝阳公园西二门）</span></b>
                                    <b>电话：<span id="dPhone">1010 9898</span></b>
                                    <b>服务时间：<span id="dHour">9:00-19:00</span></b>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="hdStoreId" value="5">
                    </div>
                    <div class="back_wrap">
                        <a href="javascript:history.go(-1)" class="pay_tips pay_co">&lt; 返回上一步</a>
                    </div>
                    <div class="order_submit_nav clear">
                        <div class="pay_tips">
                            <i class="iconfont icon-xuanzhong agree"></i>我已阅读并知悉以下旅游合同、费用包含、预定须知、温馨提示、自费项目等所有相关内容,同意签署下列旅游合同。
                        </div>
                        <div class="go_pay" id="order_submit_go_pay">去付款</div>
                    </div>
                    <div class="order_nav order_nav_ht">
                        <h2 id="text_nav">
                            <a class="light">旅游合同</a>
                            <a>费用说明</a>
                            <a>服务标准</a>
                            <a>预定须知</a>
                        </h2>
                        <div class="text_content">
                            <div class="text_list">
                                <h4 class="main_tit">
                                    <i class="iconfont icon-yuan-middle"></i>旅游合同
                                </h4>
                                <div class="text_cont">
                                    <iframe src="/Contract/%e5%87%ba%e5%a2%83%e5%90%88%e5%90%8c.html" style="width: 100%; min-height: 500px; height: 21996px;" id="contractFrame" frameborder="0" scrolling="no" height="684"></iframe>
                                </div>
                            </div>
                            <div class="text_list">
                                <h4 class="main_tit">
                                    <i class="iconfont icon-yuan-middle"></i>费用说明
                                </h4>
                                <h6 class="main_sm_title">服务项目：</h6>
                                <div class="text_cont">
                                    <p>北京/巴厘岛往返机票</p>
                                    <p>巴厘岛五晚酒店，客人选定酒店等级</p>
                                </div>
                                <h6 class="main_sm_title">不含项目：</h6>
                                <div class="text_cont">
                                    <p>因交通延阻、罢工、大风、大雾航班取消或更改时间等不可抗力原因所引致的额外费用</p>
                                    <p>如果产生一人住一间房，请另外付单房差</p>
                                    <p>出入境个人物品海关征税，超重行李托运费、保管费。</p>
                                </div>
                            </div>
                            <div class="text_list">
                                <h4 class="main_tit">
                                    <i class="iconfont icon-yuan-middle"></i>服务标准
                                </h4>
                                <h6 class="main_sm_title">服务标准说明：</h6>
                                <div class="text_cont">
                                    <p>1．景点说明：行程中未标注“入内参观”的景点均为游览外观；入内参观景点均含首道门票；</p>
                                    <p>2．行程说明：</p>
                                    <p>1） 根据国际航班团队搭乘要求，团队通常须提前3-3.5小时到达机场办理登机手续，国际段航班在当地下午15点前（含15点），晚间*前（含*）起飞的，行程均不含午餐或晚餐；</p>
                                    <p>2） 如有对飞机餐食的特殊要求（回民餐食、素食、小童餐食等），请*少在飞机起飞前4个工作日预定，否则将视为无特殊要求处理。</p>
                                    <p>3 . 保险说明：</p>
                                    <p></p>
                                    <p>旅游意外伤害险不包括游客自身携带疾病、旧病复发，且在出团日前180天内未经过*的疾病；（如心脏病复发、高血压、糖尿病并发症、移植手术复发、孕妇、精神病发作等等）。</p>
                                    <p>我社推荐上境外旅游意外伤害保险，客人可根据自身情况额外上*30万、*50万或70万保险；</p>
                                    <p></p>
                                    <p>4.退费说明：</p>
                                    <p>如遇天气、战争、罢工、地震等人力不可抗力因素无法游览，我社将按照旅行社协议，退还未游览景点门票费用，但赠送项目费用不退；</p>
                                    <p>游客因个人原因临时自愿放弃游览，酒店住宿、餐、车等费用均不退还；</p>
                                    <p>5.补费说明：</p>
                                    <p>如遇航空公司政策性调整机票价格，请按规定补交差价。机票价格为团队机票，不得改签换人退票；</p>
                                    <p>如果旅游目的地国家政策性调整门票或其他相关价格，请按规定补交差价；</p>
                                    <p></p>
                                </div>
                            </div>
                            
                            <div class="text_list">
                                <h4 class="main_tit">
                                    <i class="iconfont icon-yuan-middle"></i>预定须知
                                </h4>
                                <h6 class="main_sm_title">温馨提示：</h6>
                                <div class="text_cont">
                                    <p>1.&nbsp; 行程中所列航班号及时间仅供参考，将根据实际情况做出合理的调整；</p>
                                    <p>2.&nbsp; 行程中所注明的城市间距离，参照境外地图，仅供参考，视当地交通状况进行调整；</p>
                                    <p>3.&nbsp; 请您在境外期间遵守当地的法律法规，以及注意自己的人身安全；</p>
                                    <p>4.&nbsp; 此参考行程和旅游费用，我公司将根据参团人数、航班、签证及目的地国临时变化保留调整的权利；</p>
                                    <p>5.&nbsp; 贵重物品(现金，护照等)请随身携带或寄放在住宿饭店的保险箱内，不可放在车上或房间内等，如有遗失旅客必须自行负责，与接待旅行社责任无关；</p>
                                    <p>6.&nbsp; 住宿饭店内请先观察紧急出口所在，若是饭店警报铃响，请勿慌张。并请由紧急出口迅速离开。休息时请加扣房间内之安全锁，对陌生人不要乱开门。勿将衣物披挂在饭店的灯上，及勿在床上抽烟，烟蒂不能乱丢，以防造成火灾形责或饭店物品损坏而要求住客赔赏；</p>
                                    <p>7.&nbsp; 饭店游泳池如时间未开放及无救生人员在场，请勿自入泳池内，否则如有意外发生须自行负责；</p>
                                    <p>8.&nbsp; 搭乘船只或从事水上活动时，务必穿上救生衣，船只行走时请勿走动，切勿将手或脚放置船边受伤。海边戏水，切勿超过安全警戒线的范围。我们必须再三声明：只有您*了解本身的身体状况，如孕妇，心脏疾病*，高龄者，幼龄者，高低血压病*，或任何不适合剧烈运动之疾病*等，*不适合参加任何水上活动或浮潜或不适应于您个人体质之其它剧烈，刺激性的活动，如旅客隐瞒个人疾病或坚持参加任何活动而引致意外，一切后果旅客自行负责；与野生动物合照时，切勿作弄或拔动物须毛，请听指导，以免因人为因素而发生意外；</p>
                                    <p>9. &nbsp;巴厘岛因季节性的关系，难免客人*巴厘岛会有水土不服偶尔泻肚的状况，请尽量避免食用生冷食物，牛奶，椰子，冰块等，食物尽量熟食，如有腹泻现象请尽速告知当团领队或导游，不要自己乱用*</p>
                                    <p></p>
                                    <p></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="store_ad tank">
                        <h1><i class="iconfont icon-mendian"></i>选择提交资料门店
                        </h1>
                        <div class="border">
                            <b><span>1</span>选择门店并线下支付</b>
                            <b style="padding-left:20px;"><span>2</span>到线下门店提供资料</b>
                            <b style="padding-left:30px;"><span>3</span>资料通过后准备出游</b>
                        </div>
                        <div class="adress_opt clearfix">
                            <div class="mendian_select fl">
                                <select name="" id="" class="selection" avalon-events="change:echange_0_cityChange40$event41,change:_6"><!--ms-for:($index,el) in cityList-->
                                <option value="北京市">北京市</option><!--for643097078512-->
                                <option value="杭州市">杭州市</option><!--for643097078512-->
                                <option value="昆明市">昆明市</option><!--for643097078512-->
                                <option value="廊坊市">廊坊市</option><!--for643097078512-->
                                <option value="南京市">南京市</option><!--for643097078512-->
                                <option value="秦皇岛市">秦皇岛市</option><!--for643097078512-->
                                <option value="上海市">上海市</option><!--for643097078512-->
                                <option value="苏州市">苏州市</option><!--for643097078512-->
                                <option value="唐山市">唐山市</option><!--for643097078512-->
                                <option value="天津市">天津市</option><!--for643097078512-->
                                <option value="武汉市">武汉市</option><!--for643097078512-->
                                <option value="西安市">西安市</option><!--for643097078512--><!--ms-for-end:-->
                            </select>
                            <select name="" id="" class="selection" avalon-events="change:echange_0_districtChange40$event41,change:_6"><!--ms-for:($index,el) in districtList--><!--ms-for-end:--></select>
                            <input class="sfdq_num" type="hidden" value="0">
                            <input class="csdq_num" type="hidden" value="0">
                            <input type="hidden" class="shenfen_input" value="">
                            <input type="hidden" class="chengshi_input" value="">
                            </div>
                            <div class="input_seach_wrap">
                                <input placeholder="请输入店名" type="text" avalon-events="change:echange_0_storeSearch4041,input:_6,compositionstart:_4,compositionend:_5,focus:_2,blur:_3">
                                <a class="search"><i class="iconfont icon-sousuo1"></i></a>
                            </div>
                        </div>
                        <div class="adress_store">
                            <ul class="shop_address_list"></ul>
                            <div class="map_store" id="map_content"></div>
                            <i class="iconfont icon-shanchu closeTank"></i>
                        </div>
                        <a class="sure_btn"> 确定</a>
                </div>
                <input id="guid" type="hidden" value="764789">
                <!-- </form> -->
                <div class="reserve_r" style="position: absolute;">
                    <h1><i class="iconfont icon-icon"></i>费用明细
                    </h1>
                    <h2>
                        <span class="title">旅游团费</span>
                        <span class="price">¥7899</span>
                    </h2>
                    <p><span>1成人&nbsp;x&nbsp;¥7899.0</span>
                        <span class="fr">¥7899</span>
                    </p><!--if--><!--if--><!--if-->
                    <h2>
                        <span class="title">优惠信息</span>
                        <span class="price">-¥300</span>
                    </h2><!--ms-for:($index,el) in preferential-->
                    <p>
                        <span>金秋放价 乐享满减</span>
                        <span class="fr">-¥300</span>
                    </p><!--for58117438666--><!--ms-for-end:--><!--if--><!--if-->
                    <div>总计<em>¥</em><span id="sum_price">7599</span></div>
                </div>
            </div>
            <!-- mask为半透明遮罩层 -->
            <div id="loader"><div>
            <img src="//r.uzaicdn.com/content/store/images/order/ajaxloading.gif" alt="">
        </div>
        <div class="boxContent">自动登入中...</div>

    </div>
    <div class="mask"></div>
  
    <!-- <script src="//s.union.360.cn/309724.js" defer="" async=""></script>
    <script type="text/javascript" async="" src="https://fxgate.baidu.com/angelia/fcagl.js?production=_f7L2XwGXjyszb4d1e2oxPybgD"></script>
    <script src="https://www.googletagmanager.com/gtag/js?id=UA-27817301-1"></script>
    <script src="https://hm.baidu.com/hm.js?c0fb73081cbc7d5e7d68bbcc113343e9"></script>
    <script type="text/javascript" src="//r01.uzaicdn.com/content/store/scripts/common/avalon.js"></script>
    <script type="text/javascript" src="//r02.uzaicdn.com/content/libs/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="//r.uzaicdn.com/content/store/scripts/common/core.js"></script>
    <script type="text/javascript" src="//r02.uzaicdn.com/content/libs/date/wdatepicker.js"></script>
    <script type="text/javascript" src="//r01.uzaicdn.com/content/store/scripts/map/jquery.baidumap.min.js"></script>
    <script type="text/javascript" src="//r02.uzaicdn.com/content/store/scripts/order/order_map.js"></script>
    <script type="text/javascript" src="//r02.uzaicdn.com/content/store/scripts/common/validate.js"></script>
    <script type="text/javascript" src="//r.uzaicdn.com/content/store/scripts/common/try_form.js"></script>
    <script type="text/javascript" src="//r.uzaicdn.com/content/store/scripts/order/order.js"></script>
    <script type="text/javascript" src="//r02.uzaicdn.com/content/store/scripts/order/preferential.js"></script>
    <script type="text/javascript" src="//r.uzaicdn.com/content/store/scripts/common/statistics.js"></script>
    <script type="text/javascript" src="//api.map.baidu.com/api?v=2.0&amp;ak=DfoehznGPnaRoXGFEZgOME0N6IzZPy2w&amp;s=1"></script>
    <script type="text/javascript" src="https://api.map.baidu.com/getscript?v=2.0&amp;ak=DfoehznGPnaRoXGFEZgOME0N6IzZPy2w&amp;services=&amp;t=20190622163250"></script> -->
    
</div>
   
</template>
<script>
export default {
    data(){
        return{

        }
    }
    
}
</script>
<style scoped>

</style>
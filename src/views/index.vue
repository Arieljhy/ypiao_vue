<template>
<div class="index">
    <banner></banner>
            <!--；轮播图-->
            
            <div class="banner w" id="ban">
                <img class="banner-tu" src="../../public/img/index/lbt1.jpg" alt=""/>
                <img class="banner-tu" src="../../public/img/index/lbt2.jpg" alt=""/>
                <img class="banner-tu" src="../../public/img/index/lbt3.jpg" alt=""/>
                <ul>
                    <li class="li_first"></li>
                    <li></li>
                    <li></li>
                </ul>
                <div class="button right ico"></div>
                <div class="button left ico"></div>

            </div>
            <!--聚合模块-->
            <div class="juhe w">
                <div class="l juhe-x">
                    <a href="#">
                        <img src="../../public/img/index/jh1.jpg" alt=""/>
                    </a>
                </div>
                <div class="l juhe-x">
                    <a href="#">
                        <img src="../../public/img/index/jh2.png" alt=""/>
                    </a>
                </div>
                <div class="l juhe-x">
                    <a href="#">
                        <img src="../../public/img/index/jh3.jpg" alt=""/>
                    </a>
                </div>
            </div>

            <!-- 楼梯导航 -->
            <div id="lt-menu">
                <ul class="radiu">
                    <li class="lt-tit"><a><i class="lt0 ico"></i><span class="wenzi-on">抢手票</span></a></li>
                    <li class="lt"><a href="#louti2"> <i class="ico lt1"></i><span class="">折扣票</span></a> </li>
                    <li class="lt"><a href="#louti3"> <i class="ico lt2"></i><span class="">演唱会</span></a> </li>
                    <li class="lt"><a href="#louti4"> <i class="ico lt3"></i><span>体育赛事</span></a> </li>
                    <li class="lt"><a href="#louti5"> <i class="ico lt4"></i><span>话剧歌剧</span></a> </li>
                    <li class="lt"><a href="#louti6"> <i class="ico lt5"></i><span>音乐会</span></a> </li>
                    <li class="lt"><a href="#louti7"> <i class="ico lt6"></i><span>曲艺杂谈</span></a> </li>
                    <li class="lt lt-fding"><a href="#ban"><i class="ico lt7"></i><span>返回顶部</span></a> </li>
                </ul>
            </div>


            <!--折扣票区-->
            <div class="w lb-qs zkp lb-qs1" id="louti2">
                <div class="qs-t">
                        <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">折扣票</span></div>
                    <a class="r t-gd" href="zkp.html" target="_blank">
                        更多
                        <i class="iconfont">&#xe635;</i>
                    </a>
                </div>
                <div class="qs-c">
                    <!--  -->         
                           <div class="qs-cc" v-for="(item,key) of indexinfos[0]" :key="key">
                                <div class="qs-cc-tt">
                                        <span class="cc-tubiao ico">{{item.tic_zk}}折</span>
                                        <span class="haibao">
                                            <router-link to="`/yc_details/${tic_id}`">
                                            <img :src="item.tic_pic" alt="" class="haibao-img"/>
                                            </router-link>
                                           
                                        </span>
                                        <ul class="ico haibao-xx">
                                            <li><i></i>{{item.tic_venue}}</li>
                                            <li><i></i>{{item.tic_time}}</li>
                                        </ul>
                                </div>
                                <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                <div class="cc-b">
                                    <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                    <span>&nbsp;起</span>
                                    <span class="cc-b-ct">{{item.tic_location}}</span>
                                </div>
                            </div>
            </div>
            <!--演出-->
            <div class="yanchu">
                <!--演唱会区-->
                <div class="ych">
                    <div class="w lb-qs lb-qs2" id="louti3">
                        <div class="qs-t">
                                <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">演唱会</span></div>
                            <a class="r t-gd" href="yanchanghui.html" target="_blank">
                                更多
                                <i class="iconfont">&#xe635;</i>
                            </a>
                        </div>
                        <div class="qs-c">
                            <!--  -->         
                            <div class="qs-cc" v-for="(item,key) of indexinfos[1]" :key="key">
                                            <div class="qs-cc-tt">                    
                                                <span class="haibao">
                                                <a href="/yc_details/${item.tic_id}">
                                                    <img :src="item.tic_pic" class="haibao-img"/></a>
                                                
                                                </span>
                                                <ul class="ico haibao-xx">
                                                    <li><i></i>{{item.tic_venue}}</li>
                                                    <li><i></i>{{item.tic_time}}</li>
                                                </ul>
                                            </div>
                                            <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                            <div class="cc-b">
                                                <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                                <span>&nbsp;起</span>
                                                <span class="cc-b-ct">{{item.tic_location}}</span>
                                            </div>
                                        </div>
                        </div>
                        <div class="yanchu-ph w radius">
                            <div class="ph-o ph-by radius">
                                <div class="by-top"></div>
                                <ul>
                                    <li>
                                        近期推荐
                                    </li>
                                    <li>
                                        <span class="l by by-mc">1</span>
                                        <a class="l cc-title by-title" href="/t_61415/">
                                            【周年庆狂欢】《邓丽君 传奇》1:1 还原3D全息演唱会
                                        </a>
                                        <span class="r">
                                            <span class="cc-price cor7" style="font-size: 16px">补票中</span>
                                        </span>
                                    </li>

                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li>

                                    </li>
                                </ul>
                            </div>
                            <div class="ph-o ph-yr">
                                <div class="by-top"></div>
                                <div class="rmyr">热门艺人</div>
                                <ul class="yr yr-on">
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx1.jpg" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx2.png" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx3.png" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx4.jpg" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx5.png" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx6.jpg" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx7.png" alt=""/>
                                        </a>
                                    </li>
                                    <li class="yr-tx cc-name">
                                        "林俊杰"
                                        <a href="">
                                            <img class="tx-tx" src="../../public/img/index/yrtx8.png" alt=""/>
                                        </a>
                                    </li>
                                </ul>

                            </div>

                        </div>
                    </div>

                </div>

                <!--体育赛事-->
                <div class="tyss">
                    <div class="w lb-qs lb-qs3" id="louti4">
                        <div class="qs-t">
                                <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">体育赛事</span></div>
                            <a class="r t-gd" href="tiyusaishi.html" target="_blank">
                                    
                                更多
                                <i class="iconfont">&#xe635;</i>
                            </a>
                        </div>
                        <div class="qs-c">
                                <!-- 123 -->
                                <!--  -->         
                            <div class="qs-cc" v-for="(item,key) of indexinfos[2]" :key="key">
                                            <div class="qs-cc-tt">                    
                                                <span class="haibao">
                                                <router-link :to="`yc_details/${item.tic_id}`">
                                                    <img :src="item.tic_pic" class="haibao-img"/></router-link>
                                                
                                                </span>
                                                <ul class="ico haibao-xx">
                                                    <li><i></i>{{item.tic_venue}}</li>
                                                    <li><i></i>{{item.tic_time}}</li>
                                                </ul>
                                            </div>
                                            <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                            <div class="cc-b">
                                                <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                                <span>&nbsp;起</span>
                                                <span class="cc-b-ct">{{item.tic_location}}</span>
                                            </div>
                                        </div>
                        </div>
                    </div>

                </div>

                <!--话剧歌剧-->
                <div class="hjgj">
                    <div class="w lb-qs lb-qs4" id="louti5">
                        <div class="qs-t">
                            <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">话剧歌剧</span></div>
                            <a class="r t-gd" href="huajugeju.html" target="_blank">
                                更多
                                <i class="iconfont">&#xe635;</i>
                            </a>
                        </div>
                        <div class="qs-c">
                            <!--  -->         
                            <div class="qs-cc" v-for="(item,key) of indexinfos[3]" :key="key">
                                            <div class="qs-cc-tt">                    
                                                <span class="haibao">
                                                <router-link :to="`yc_details/${item.tic_id}`">
                                                    <img :src="item.tic_pic" class="haibao-img"/></router-link>
                                                
                                                </span>
                                                <ul class="ico haibao-xx">
                                                    <li><i></i>{{item.tic_venue}}</li>
                                                    <li><i></i>{{item.tic_time}}</li>
                                                </ul>
                                            </div>
                                            <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                            <div class="cc-b">
                                                <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                                <span>&nbsp;起</span>
                                                <span class="cc-b-ct">{{item.tic_location}}</span>
                                            </div>
                                        </div>
                                

                        </div>
                    </div>

                </div>

                <!--音乐会-->
                <div class="yyh">
                    <div class="w lb-qs lb-qs5" id="louti6">
                        <div class="qs-t">
                            
                            <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">音乐会</span></div>
                            <a class="r t-gd" href="yinyuehui.html" target="_blank">
                                更多
                                <i class="iconfont">&#xe635;</i>
                            </a>
                        </div>
                        <div class="qs-c">
                            <!--  -->         
                            <div class="qs-cc" v-for="(item,key) of indexinfos[4]" :key="key">
                                            <div class="qs-cc-tt">                    
                                                <span class="haibao">
                                                <router-link :to="`yc_details/${item.tic_id}`">
                                                    <img :src="item.tic_pic" class="haibao-img"/></router-link>
                                                
                                                </span>
                                                <ul class="ico haibao-xx">
                                                    <li><i></i>{{item.tic_venue}}</li>
                                                    <li><i></i>{{item.tic_time}}</li>
                                                </ul>
                                            </div>
                                            <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                            <div class="cc-b">
                                                <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                                <span>&nbsp;起</span>
                                                <span class="cc-b-ct">{{item.tic_location}}</span>
                                            </div>
                                        </div>
                                

                        </div>
                    </div>
                </div>

                <!--曲苑杂坛-->
                <div class="qyzt">
                    <div class="w lb-qs lb-qs6" id="louti7">
                        <div class="qs-t">
                        
                            <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">曲苑杂坛</span></div>
                            <a class="r t-gd" href="quyaunzatan.html" target="_blank">
                                更多
                                <i class="iconfont">&#xe635;</i>
                            </a>
                        </div>
                        <div class="qs-c">
                            <!--  -->         
                            <div class="qs-cc" v-for="(item,key) of indexinfos[5]" :key="key">
                                            <div class="qs-cc-tt">                    
                                                <span class="haibao">
                                                <router-link :to="`yc_details/${item.tic_id}`">
                                                    <img :src="item.tic_pic" class="haibao-img"/></router-link>
                                                
                                                </span>
                                                <ul class="ico haibao-xx">
                                                    <li><i></i>{{item.tic_venue}}</li>
                                                    <li><i></i>{{item.tic_time}}</li>
                                                </ul>
                                            </div>
                                            <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                            <div class="cc-b">
                                                <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                                <span>&nbsp;起</span>
                                                <span class="cc-b-ct">{{item.tic_location}}</span>
                                            </div>
                                        </div>
                                
                        </div>
                    </div>
                </div>
                <!--度假休闲-->
                <div class="djxx">
                        <div class="w lb-qs lb-qs6" id="louti7">
                            <div class="qs-t">
                            
                                <div class="l t-tit"> <i class="iconfont">&#xe67d;</i><span class="l">度假休闲</span></div>
                                <a class="r t-gd" href="quyaunzatan.html" target="_blank">
                                    更多
                                    <i class="iconfont">&#xe635;</i>
                                </a>
                            </div>
                            <div class="qs-c">
                                <!--  -->         
                            <div class="qs-cc" v-for="(item,key) of indexinfos[6]" :key="key">
                                            <div class="qs-cc-tt">                    
                                                <span class="haibao">
                                                <router-link :to="`yc_details/${item.tic_id}`">
                                                    <img :src="item.tic_pic" class="haibao-img"/></router-link>
                                                
                                                </span>
                                                <ul class="ico haibao-xx">
                                                    <li><i></i>{{item.tic_venue}}</li>
                                                    <li><i></i>{{item.tic_time}}</li>
                                                </ul>
                                            </div>
                                            <a href="#" class="cc-title slh qs-cc-haibao" target="_blank">{{item.tic_title}}</a>
                                            <div class="cc-b">
                                                <span style="color: red">￥</span> <span class="cc-b-pri" style="color: red">{{item.tic_price}}</span>
                                                <span>&nbsp;起</span>
                                                <span class="cc-b-ct">{{item.tic_location}}</span>
                                            </div>
                                        </div>
                                    
                            </div>
                        </div>
                    </div>
            </div>  
 </div>  


</div>
</template>
<script>
import Banner from '../components/banner/banner';
export default {
    inject:['reload'],
    data(){
    return {
        styles:[0,1,2,3,4,5,6],
        indexinfos:[]
    }
  },
  props:[],
  methods:{
   
      load(style){
          this.axios.get(
      `/ticket/select/${style}`
        ).then(result=>{
        let indexinfo=[];
        
        for(let i in result.data){
           //this.selectTickets(result.data[i].itic_family_id,result.data[i].recommended);
           let recommended=result.data[i].recommended;
           this.axios.get(
                `/ticket/selectByid/${result.data[i].itic_family_id}`
                ).then(result=>{ 
                indexinfo[recommended] = result.data[0];
            })   
        }
            this.indexinfos[style]=indexinfo;
            console.log(this.indexinfos);       
        }    

    );
    },
    selectTickets(itic_family_id,recommended){
        this.axios.get(
                `/ticket/selectByid/${itic_family_id}`
                ).then(result=>{ 
                this.indexinfo[recommended] = result.data[0];
            })
            
    }
      
  },
  watch:{},
  computed:{},
  //当这个组件对象创建后，自动执行！
  created(){
      this.load(0);
      this.load(1);
      this.load(2);
      this.load(3);
      this.load(4);
      this.load(5);
      this.load(6);
  },
  components:{
      banner:Banner
  }
}
</script>

<style lang="scss">
@import 'index.scss'; 

</style>
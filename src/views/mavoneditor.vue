<template>
    <div>
        <div class="title">添加商品详情介绍</div>
        <mavon-editor v-model="content" :toolbars="toolbars" @keydown="" style=""/>
        
    </div>

</template>
<script>
export default {
    
    data(){
        return{
            toolbars: {
            bold: true, // 粗体
            italic: true, // 斜体
            header: true, // 标题
            underline: true, // 下划线
            mark: true, // 标记
            superscript: true, // 上角标
            quote: true, // 引用
            ol: true, // 有序列表
            ink: true, // 链接
            imagelink: true, // 图片链接
            help: true, // 帮助
            code: true, // code
            subfield: true, // 是否需要分栏
            fullscreen: true, // 全屏编辑
            readmodel: true, // 沉浸式阅读
            /* 1.3.5 */
            undo: true, // 上一步
            trash: true, // 清空
            save: true, // 保存（触发events中的save事件）
            /* 1.4.2 */
            navigation: true // 导航目录
            }

        }

    }
    
}
</script>
<style scoped>
.title{
    font-size: 20px;
    height:50px;
    line-height: 50px;
}    
</style>
var globe_speed;
var charts;
$(function (){
    charts =new Highcharts.Chart({
            chart: {
                type: 'gauge',
                plotBackgroundColor: null,
                plotBackgroundImage: null,
                plotBorderWidth: 0,
                plotShadow: false,
                renderTo:'container'
            },
            exporting:{
                enabled:false
            },
            credits:{//右下角的文本
                enabled: true,
                position: {//位置设置
                    align: 'right',
                    x: -10,
                    y: -10
                },
                href: "http://www.gtao.com",//点击文本时的链接
                text: "GuanTao Hi-Tech"//显示的内容
            },

            title: {
                text: '网络接入速度测试'
            },

            pane: {
                startAngle: -150,
                endAngle: 150,
                background: [{
                    backgroundColor: {
                        linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                        stops: [
                            [0, '#FFF'],
                            [1, '#333']
                        ]
                    },
                    borderWidth: 0,
                    outerRadius: '109%'
                }, {
                    backgroundColor: {
                        linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                        stops: [
                            [0, '#333'],
                            [1, '#FFF']
                        ]
                    },
                    borderWidth: 1,
                    outerRadius: '107%'
                }, {
                    // default background
                }, {
                    backgroundColor: '#DDD',
                    borderWidth: 0,
                    outerRadius: '105%',
                    innerRadius: '103%'
                }]
            },

            // the value axis
            yAxis: {
                min: 0,
                max: 10000,

                minorTickInterval: 'auto',
                minorTickWidth: 1,
                minorTickLength: 10,
                minorTickPosition: 'inside',
                minorTickColor: '#666',

                tickPixelInterval: 30,
                tickWidth: 2,
                tickPosition: 'inside',
                tickLength: 10,
                tickColor: '#666',
                labels: {
                    step: 5,
                    rotation: 'auto'
                },
                title: {
                    text: 'kb/s'
                },
                plotBands: [{
                    from: 0,
                    to: 6000,
                    color: '#33FF66' // green
                }, {
                    from: 6000,
                    to: 8000,
                    color: '#FFFF33' // yellow
                }, {
                    from: 8000,
                    to: 10000,
                    color: '#FF3300' // red
                }]
            },

            series: [{
                name: '下载速度',
                data: [0],
                tooltip: {
                    valueSuffix: 'kb/s'
                }
            }]

        });
});

function test(){
    $("#download-process").slideDown();
    var settings = {
        download: {
            onprogress: function(speed, min, max) {
                $("#download-text1").html("<h1>即时速度:"+speedValidate(speed)+"</h1>");
                globe_speed = speed;
                var point = charts.series[0].points[0],newVal,inc = speed;
                newVal = inc;
                if (newVal < 0 ) {
                    newVal = 0;
                }
                else if (newVal>10000){
                    newVal = 10000;
                }
                point.update(newVal);
            },
            onload: function(speed, min, max) {
                $("#download-text1").html("<hr><table class='table table-bordered'><tr><td><strong>IP地址：</strong></td><td colspan='2'><p class='text-success'>"+getIp()+"</p></td><td colspan='2'><strong>测试结果</strong></td></tr>" +
                    "<tr><td><strong>操作系统：</strong></td><td colspan='2'><p class='text-info'>"+getOS()+"</p></td><td colspan='2'><p class='text-error'><strong>平均速度：</strong>"+speedValidate(speed)+"</p></td> </tr>" +
                    "<tr><td><strong>浏览器：</strong></td><td colspan='2'><p class='muted'>"+ getBrowser()+"</p></td><td colspan='2'><strong>最大速度：</strong>"+speedValidate(max)+"</td> </tr>" +
                    "<tr><td><strong>测试时间：</strong></td><td colspan='2'><p class='text-warning'>"+getMyDate()+"</p></td><td colspan='2'><strong>您的带宽约等于：</strong>"+bandwidthCalc(speed)+"</td> </tr></table>");
                var point = charts.series[0].points[0];
                point.update(0);
                /*
                 $.post("SaveReport",{ipadd:getIp(),os:getOS(),browser:getBrowser(),itime:getMyDate(),avgSpeed:speed},function(data){

                 })
                 */
            }
        }
    };
    var STInstance = new SpeedTest(settings);
    STInstance.startRequest(true, false);
}


function getBrowser()
{
    var browserInfo;
    if($.browser.msie)
    {
        browserInfo = "Microsoft Internet Explorer "+ $.browser.version;
    }
    else if($.browser.mozilla)
    {
        browserInfo = "Mozilla Firefox "+ $.browser.version;
    }
    else if($.browser.safari)
    {
        browserInfo = "Apple Safari "+ $.browser.version;
    }
    else if($.browser.opera)
    {
        browserInfo="Opera "+ $.browser.version;
    }
    else if($.browser.chrome)
    {
        browserInfo="Google Chrome "+ $.browser.version;
    }
    return browserInfo;
}

function getIp()
{
    return $("#ipadd").val();
}

function speedValidate(speedParam){
    var returnSpeed;
    if(speedParam<1000){
        returnSpeed = speedParam+'Kb/s';
    }
    else{
        returnSpeed = Math.round((speedParam/1024)*100)/100+'Mb/s';
    }
    return returnSpeed;
}

function bandwidthCalc(speed){
    var bandwidth ;
    if(speed<128){speed = 128}
    bandwidth = (speed/128).toFixed(0);
    return bandwidth+'M';
}

function getOS() {
    var sUserAgent = navigator.userAgent;
    var isWin = (navigator.platform == "Win32") || (navigator.platform == "Windows");
    var isMac = (navigator.platform == "Mac68K") || (navigator.platform == "MacPPC") || (navigator.platform == "Macintosh") || (navigator.platform == "MacIntel");
    if (isMac) return "Mac";
    var isUnix = (navigator.platform == "X11") && !isWin && !isMac;
    if (isUnix) return "Unix";
    var isLinux = (String(navigator.platform).indexOf("Linux") > -1);
    if (isLinux) return "Linux";
    if (isWin) {
        var isWin2K = sUserAgent.indexOf("Windows NT 5.0") > -1 || sUserAgent.indexOf("Windows 2000") > -1;
        if (isWin2K) return "Windows 2000";
        var isWinXP = sUserAgent.indexOf("Windows NT 5.1") > -1 || sUserAgent.indexOf("Windows XP") > -1;
        if (isWinXP) return "Windows XP";
        var isWin2003 = sUserAgent.indexOf("Windows NT 5.2") > -1 || sUserAgent.indexOf("Windows 2003") > -1;
        if (isWin2003) return "Windows 2003";
        var isWinVista= sUserAgent.indexOf("Windows NT 6.0") > -1 || sUserAgent.indexOf("Windows Vista") > -1;
        if (isWinVista) return "Windows Vista";
        var isWin7 = sUserAgent.indexOf("Windows NT 6.1") > -1 || sUserAgent.indexOf("Windows 7") > -1;
        if (isWin7) return "Windows 7";
    }
    return "未知";
}

function getMyDate()
{
    var d = new Date();
    var YMDHMS = d.getFullYear() + "-" +(d.getMonth()+1) + "-" + d.getDate() + " " + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds();
    return YMDHMS;
}

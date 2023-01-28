 **编辑问卷** 

```javascript
this.state = {
    cur_id: 7                     //问卷数加一,
    title:  "问卷名称"             //问卷名称
    question: [
        {
            id: 1,
            type: 0,            //单选题
            display: true,      //是否显示
            q_content: {
                intro: "问题"    //问题
                choices: [        //字符串数组，选项

                ]
            }
        },
        {
            id: 2
            type: 1,            //多选题
            display: true,      //是否显示
            q_content: {
                intro: "问题"    //问题
                choices: [        //字符串数组，选项

                ]
            }
        },
        {
            id: 3
            type: 2,            //数字收集
            display: true,      //是否显示
            q_content: {
                intro: "问题"    //问题
                min: 0,         //最小值
                max: 10,        //最大值
                step: 1           //步长
            }   
        },
        {
            id: 4
            type: 3,            //小数收集
            display: true,          //是否显示
            q_content: {
                intro: "问题"    //问题
                min: 0,         //最小值
                max: 10,        //最大值
                step: 1,          //步长
                precious: 0.01  //精度
            }

        },
        {
            id: 5
            type: 4,                //文本收集
            display: true,      //是否显示
            q_content: {
                intro: "问题"    //问题
            }
        },
        {
            id: 6
            type: 5,            //评分收集
            display: true,      //是否显示
            q_content: {
                intro: "问题",   //问题
                max: 5            //最高等级
            }

        },
    ],
    related: {
        0-0: ["1", "2"],
        1-2: ["3"]
    }
}

{
    "metadata":
    {
        "title":"新冠肺炎调查",
        "intro":"感谢您能抽出几分钟时间来参加本次答题，现在我们就马上开始吧！"},
        "u_id":1,
        "related":{},
        "content":[{"id":1,"type":4,"q_content":{"intro":"您的居住地是？"}},{"id":2,"type":0,"q_content":{"intro":"您的性别是？","choices":{"names":["男","女"]}}},{"id":3,"type":0,"q_content":{"intro":"您对新冠疫情的关注程度如何？","choices":{"names":["不关注","一般","比较关注","非常关注"]}}},{"id":4,"type":1,"q_content":{"intro":"您了解新冠疫情的渠道有哪些？","choices":{"names":["政府报道","新闻媒体","亲友"]}}},{"id":5,"type":2,"q_content":{"intro":"您每天需要口罩个数是？","min":"1","max":"5","step":"1"}},{"id":6,"type":3,"q_content":{"intro":"您平均每天出门次数是？","min":"0","max":"5","step":"0.5","precious":"0.1"}},{"id":7,"type":5,"q_content":{"intro":"您对本问卷的评价是？","max":"10"}}],
         "setting":{"maxTimes":1,"needRegister":1,"maxTimesPerDay":1,"resistrictTimes":"10","finishTime":"2020-05-28"}}
```

**渲染问卷**

```javascript
this.state = {
    title: "你是新冠疫情终结者吗?",
    questions: [
        {
            type: 0,
            display: true,
            intro: "您对新冠疫情的了解来源于哪里？",
            choices: [
                "政府", "媒体", "社区", "校园"
            ],
            logic: [
                [1],[-1],[-1,],[-1]
            ]
        },
        {
            type: 1,
            display: true,
            intro: "您对新冠疫情的了解来源于哪里？",
            choices: [
                "政府", "媒体", "社区", "校园"
            ]
        },
        {
            type: 2,
            display: true,
            intro: "您认为每天应使用几个口罩？",
            min: 1,
            max: 10,
            step: 1
        },
        {
            type: 3,
            display: true,
            intro: "您认为应几天出一次门？",
            min: 1,
            max: 10,
            step: 0.1
        },
        {
            type: 4,
            display: true,
            intro: "您对疫情防控有什么建议？",
        },
        {
            type: 5,
            display: true,
            intro: "您对本问卷的评价？",
            max: 6
        }
    ]
}
```

**问卷结果**

```javascript
/*
*   下标从0开始
*/
[
    0,                //单选
    [1, 2, 3],        //多选
    5,                //整数收集
    6.5,            //小数收集
    "减少出门",         //文本收集
    5                //评分
]

{
    answer: {
        0: {

        },
        1: {

        }
    }
}
```

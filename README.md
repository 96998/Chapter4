#第四章 保持页面状态

## 会话对象session
```aidl
session作用于同一浏览器,其生命周期直到浏览器关闭才会
结束
```

## session对象常用方法
```aidl
setAttribute()
getAttribute()
removeAttribute()
getAttributeNames()
invalidate()
isNew()
getCreationTime()
getLastAccessesTime()
getMaxInactiveInternal()
getId()
setMaxInactiveInternal()
getServletContext()

getCreationTime()返回的是1970年1月1日00:00:00(CUT)Coordinated Universal Time
到现在时间的秒数

```

### 将CUT(Coordinate Universal Time)转化为正常
```aidl
 SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
 Date d = new Date(session.getCreationTime());
 out.print("The create time of session"+sdf.format(d));
```

## pageContext对象
![null](pic/TIM图片20190525100859.jpg)


## 全局应用程序对象application
```aidl
每个用户公享同一个application,application直到
服务器重启才消失

```
### application的常用方法
![null](pic/TIM图片20190525100859.jpg)


## 获取配置信息对象config

```aidl
关于从web.xml获取必要的信息,在下的案例是index.jsp与web.xml

```
#### edit web.xml
The structure  is  like this
use <init-param> to set parameter
```aidl

    <servlet>
        <servlet-name>index</servlet-name>
        <jsp-file>/index.jsp</jsp-file>
        <init-param>
            <param-name>hostip</param-name>
            <param-value>120.78.174.35</param-value>
        </init-param>
        <init-param>
            <param-name>port</param-name>
            <param-value>22</param-value>
        </init-param>
    </servlet>
    <servlet-mapping>
        <servlet-name>index</servlet-name>
        <url-pattern>/index.jsp</url-pattern>
    </servlet-mapping>
```

### to get parameters

```aidl
<%=config.getInitParameter("hostip")%>
```
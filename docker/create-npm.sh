# todo 更改成变量
Source=jd

# todo 现在全量下载，后期按需下载

# 1. 安装nrm管理多个源
npm install -g nrm --registry=http://registry.npm.taobao.org

# 2. 添加京东私源
nrm add jd http://registry.m.jd.com # 京东
nrm add taobao http://registry.npm.taobao.org # 淘宝

# 3. 安装 cnpm
npm install -g cnpm --registry=https://registry.npm.taobao.org

# 4. 安装 yarn
npm install -g yarn

# 5. 切换到jd源
nrm use $Source

# 查看
nrm current

echo npm -v

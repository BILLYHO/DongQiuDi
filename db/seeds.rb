# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "admin", email:"admin@dongqiudi.com", password: "dongqiudi", password_confirmation: "dongqiudi")
User.create(name: "俊俊爱执信", email: "1774357363@weibo.com", password: "2.00J6BFwBUBxKFEfa0c968587In_crD", password_confirmation: "2.00J6BFwBUBxKFEfa0c968587In_crD", weibo_token: "2.00J6BFwBUBxKFEfa0c968587In_crD", weibo_uid: "1774357363", weibo_avatar_small: "http://tp4.sinaimg.cn/1774357363/50/5666005758/1", weibo_avatar_large: "http://tp4.sinaimg.cn/1774357363/180/5666005758/1", weibo_avatar_hd: "http://tp4.sinaimg.cn/1774357363/180/5666005758/1")

Topic.create(topic_id: "123", topic_type:1, time: Date.new(2012,02,28), title: "test", content: "sss")
50.times do
  Topic.create(topic_id: "10001", topic_type:1, time: Date.new(2012,04,01), title: "test", content: "中东足协电 北京时间2012年3月30日星期五13:00 在中山大学东校区西足球场进行了一场精彩激烈的足球比赛！比赛双方分别是软件学院和资管学院！经过下上半场各25分钟的激烈碰撞，最终身穿黑白间条球衣的软件学院和身披深色球衣的资管学院1:1握手言和！")
end

Member.create(member_id: "08001", name: "周瑞璟", gender: "男", position: "中场", about: "周瑞璟，中山大学软件学院08级软件工程（数字媒体），有中东传奇、中东球王之称，可见其球技非同一般，在2012年中东足协举办的 第七届院系杯的决赛中，连过三人进球绝杀对手，为HWFC夺得冠军！", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08001.jpg")
Member.create(member_id: "08002", name: "黄凯文", gender: "男", position: "离队", about: "08级HWFC球员黄凯文，2010年10月加入球队，于2012年6月毕业离开球队。2011年5月获得院系杯8强，2011年10月获得大学城联赛4强，2012年6月获得院系赛冠军。这位以速度和身体素质见长的球员司职右后卫，可以胜任后腰，中后卫，边前卫等多个位置，是防守端的多面手。这位球场上的万金油球风硬朗，球技精湛，意志顽强，是球队不可或缺的球员，作为球队的后防核心，时常在球队打不开局面的情况下挺身而出，为球队攻城拔寨。作为HWFC最老的一批球员，无论是场上还是场下，黄凯文都是HWFC每一位球员学习的典范。", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08002.jpg")
Member.create(member_id: "08001", name: "周瑞璟", gender: "男", position: "中场", about: "周瑞璟，中山大学软件学院08级软件工程（数字媒体），有中东传奇、中东球王之称，可见其球技非同一般，在2012年中东足协举办的 第七届院系杯的决赛中，连过三人进球绝杀对手，为HWFC夺得冠军！", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08001.jpg")
Member.create(member_id: "08002", name: "黄凯文", gender: "男", position: "离队", about: "08级HWFC球员黄凯文，2010年10月加入球队，于2012年6月毕业离开球队。2011年5月获得院系杯8强，2011年10月获得大学城联赛4强，2012年6月获得院系赛冠军。这位以速度和身体素质见长的球员司职右后卫，可以胜任后腰，中后卫，边前卫等多个位置，是防守端的多面手。这位球场上的万金油球风硬朗，球技精湛，意志顽强，是球队不可或缺的球员，作为球队的后防核心，时常在球队打不开局面的情况下挺身而出，为球队攻城拔寨。作为HWFC最老的一批球员，无论是场上还是场下，黄凯文都是HWFC每一位球员学习的典范。", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08002.jpg")
Member.create(member_id: "08001", name: "周瑞璟", gender: "男", position: "中场", about: "周瑞璟，中山大学软件学院08级软件工程（数字媒体），有中东传奇、中东球王之称，可见其球技非同一般，在2012年中东足协举办的 第七届院系杯的决赛中，连过三人进球绝杀对手，为HWFC夺得冠军！", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08001.jpg")
Member.create(member_id: "08002", name: "黄凯文", gender: "男", position: "离队", about: "08级HWFC球员黄凯文，2010年10月加入球队，于2012年6月毕业离开球队。2011年5月获得院系杯8强，2011年10月获得大学城联赛4强，2012年6月获得院系赛冠军。这位以速度和身体素质见长的球员司职右后卫，可以胜任后腰，中后卫，边前卫等多个位置，是防守端的多面手。这位球场上的万金油球风硬朗，球技精湛，意志顽强，是球队不可或缺的球员，作为球队的后防核心，时常在球队打不开局面的情况下挺身而出，为球队攻城拔寨。作为HWFC最老的一批球员，无论是场上还是场下，黄凯文都是HWFC每一位球员学习的典范。", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08002.jpg")
Member.create(member_id: "08001", name: "周瑞璟", gender: "男", position: "中场", about: "周瑞璟，中山大学软件学院08级软件工程（数字媒体），有中东传奇、中东球王之称，可见其球技非同一般，在2012年中东足协举办的 第七届院系杯的决赛中，连过三人进球绝杀对手，为HWFC夺得冠军！", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08001.jpg")
Member.create(member_id: "08002", name: "黄凯文", gender: "男", position: "离队", about: "08级HWFC球员黄凯文，2010年10月加入球队，于2012年6月毕业离开球队。2011年5月获得院系杯8强，2011年10月获得大学城联赛4强，2012年6月获得院系赛冠军。这位以速度和身体素质见长的球员司职右后卫，可以胜任后腰，中后卫，边前卫等多个位置，是防守端的多面手。这位球场上的万金油球风硬朗，球技精湛，意志顽强，是球队不可或缺的球员，作为球队的后防核心，时常在球队打不开局面的情况下挺身而出，为球队攻城拔寨。作为HWFC最老的一批球员，无论是场上还是场下，黄凯文都是HWFC每一位球员学习的典范。", motto: "none", avatar: "http://7u2tjq.com1.z0.glb.clouddn.com/08002.jpg")
50.times do
  Member.create(member_id: "123456", name: "testing", gender: "Male", position: "GK", about: "none", motto: "none")
end
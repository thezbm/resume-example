#import "lib/resume_tmpl.typ": *

#let languages = (
  en: 0,
  zh: 1
)

#let language = sys.inputs.at("lang")

#let _c(..contents) = {
    contents.at(languages.at(language))
}
#let _s(..strings) = {
    strings.at(languages.at(language))
}

#let name = _s("Peter Parker", "彼得·帕克")
#let location = _s("New York City, New York", "纽约州 纽约市")
#let email = "peterparker@email.com"
#let github = "github.com/peterparker"
#let linkedin = "linkedin.com/in/peterparker"
#let phone = "+1 (555) 123-4567"
#let personal-site = "peterpaker.com"

#show: resume.with(
  author: name,
  location: location,
  email: email,
  // github: github,
  // linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: ("New Computer Modern", "Microsoft YaHei"),
)

== #_c[Education][教育经历]

// #edu(dates: "", degree: "", gpa: "", institution: "", location: "")

#edu(
  institution: _s("Empire State University", "帝国州立大学"),
  location: _s("New York City, New York", "纽约州 纽约市"),
  dates: dates-helper(start-date: _s("Aug 2014", "2014年8月"), end-date: _s("May 2018", "2018年5月")),
  degree: _s("Bachelor of Science in Physics", "物理学学士"),
)
#_c[
- Cumulative GPA: 4.0\/4.0
- Specialized in quantum mechanics, radiation physics, and material science.
- Participated in multiple research projects while managing a heavy extracurricular and superhero schedule.
- Graduated with honors, demonstrating a strong work ethic and time-management skills.
][
- GPA: 4.0\/4.0
- 专攻量子力学、辐射物理学和材料科学。
- 在忙碌的学术和超级英雄工作之余，积极参与科研项目。
- 毕业时成绩优异，展现了强大的工作热情和时间管理能力。
]

== #_c[Work Experience][工作经历]

// #work(company: "", dates: "", location: "", title: "")

#work(
  title: _s("Freelance Photographer", "自由职业摄影师"),
  location: _s("New York City, New York", "纽约州 纽约市"),
  company: _s("Self-Employed", "自雇"),
  dates: dates-helper(start-date: _s("2015", "2015年"), end-date: _s("Present", "至今")),
)
#_c[
- Captured a wide range of photographs for news outlets, clients, and personal projects, specializing in action shots and photojournalism
- Delivered hi-quality, edited photos within tight deadlines, emphasizing visual storytelling
- Developed and maintained a strong portfolio showcasing various photography styles, including portraits and street photography
][
- 为新闻媒体、客户和个人项目拍摄各种照片，专注于动态拍摄和新闻摄影
- 在紧迫的时间内交付高质量编辑照片，注重视觉故事讲述
- 发展并维护强大的作品集，展示包括人像和街头摄影在内的多种摄影风格
]

#work(
  title: _s("Research Assistant", "研究助理"),
  location: _s("New York City, New York", "纽约州 纽约市"),
  company: _s("Oscorp Industries", "奥斯科普工业公司"),
  dates: dates-helper(start-date: "2018", end-date: "2020"),
)
#_c[
- Assisted in scientific research focused on genetic engineering, nanotechnology, and material science
- Collaborated with senior scientists to develop prototypes, conduct experiments, and analyze data
- Contributed to the development of cutting-edge technology, including web-shooter designs and materials
][
- 协助进行基因工程、纳米技术和材料科学方面的科研工作
- 与高级科学家合作，进行原型设计、实验执行和数据分析
- 参与前沿技术的开发，包括蛛丝发射器设计和材料研究
]

#work(
  title: _s("Superhero (Spider-Man)", "超级英雄（蜘蛛侠）"),
  location: _s("New York City, New York", "纽约州 纽约市"),
  company: _s("Self-Employed", "自雇"),
  dates: dates-helper(start-date: _s("2010", "2010年"), end-date: _s("Present", "至今")),
)
#_c[
- Defended New York City from a wide range of threats, including supervillains, organized crime, and natural disasters
- Utilized scientific knowledge and physical agility to solve complex problems and save lives
- Developed and maintained advanced technology, such as web-shooters and web-based transportation methods
- Collaborated with law enforcement and other superheroes to combat large-scale threats
][
- 保护纽约市免受各种威胁，包括超级恶棍、有组织犯罪和自然灾害
- 运用科学知识和身体敏捷解决复杂问题，拯救生命
- 开发并维护先进技术，如蛛丝发射器和基于蛛丝的交通工具
- 与执法部门和其他超级英雄合作，打击大规模威胁
]

== #_c[Projects][项目经历]

// #project(dates: "", name: "", role: "", url: "")

#project(
  name: _s("Battle of the Brooklyn Bridge", "布鲁克林大桥之战"),
  role: _s("Lead Hero and Strategist", "首席英雄与战略家"),
  dates: dates-helper(start-date: _s("2018", "2018年"), end-date: _s("2018", "2022年")),
)
#_c[
- Fought against the Green Goblin in a high-stakes battle to protect New York City's iconic Brooklyn Bridge
  - Utilized advanced webbing technology and quick reflexes to neutralize enemy attacks while preventing civilian casualties
  - Collaborated with the Avengers to contain collateral damage and minimize risk to bystanders
- Strategized battle tactics to avoid large-scale destruction while keeping the bridge and its structure intact
  - Worked in close coordination with local law enforcement to evacuate the area and prevent traffic chaos
][
- 与绿魔在布鲁克林大桥展开了一场关乎纽约市命运的激烈战斗
  - 运用先进的蛛丝技术和迅捷的反应能力，化解敌人的攻击并防止平民伤亡
  - 与复仇者联手，控制附带损害，尽量减少对旁观者的威胁
- 制定战术，避免大规模破坏的同时保持大桥结构完好
  - 与当地执法部门密切配合，疏散现场人群并防止交通混乱
]

#project(
  name: _s("Oscorp Nanotech Initiative", "奥斯科普纳米技术计划"),
  role: _s("Researcher", "研究员"),
  dates: dates-helper(start-date: _s("2022", "2022年"), end-date: _s("Present", "至今")),
  url: "www.oscorpindustries.com/nanotech",
)
#_c[
- Contributed to the development of cutting-edge nanotechnology with applications in medical fields and material science
- Conducted experiments on nanomaterial properties and their potential for creating stronger, more flexible materials
- Collaborated with a multidisciplinary team to create prototypes and test their real-world applications
- Assisted in the development of a nanotech suit prototype with potential applications in superhero gear and enhanced protection
- Played a key role in research that led to breakthroughs in nanomaterial resilience and self-healing capabilities
][
- 参与了尖端纳米技术的开发，涉及医疗领域和材料科学的应用
- 对纳米材料的特性进行实验研究，探索其在制造更强、更柔韧的材料方面的潜力
- 与多学科团队合作，制作原型并测试其实际应用
- 协助开发纳米技术战衣原型，具备在超级英雄装备和增强保护领域的潜在应用
- 在研究中扮演关键角色，推动了纳米材料的韧性和自我修复能力的突破
]

== #_c[Skills][技能]

#_c[
- *Languages*: English (Fluent), Spanish (Intermediate), Technical/Scientific Terminology (Advanced)
- *Specialized Skills*: Web-shooter Engineering, Aerial Acrobatics, Crime Scene Investigation, Forensics, First Aid & Emergency Medical Response, Stealth Tactics, Spider-Sense (Enhanced Reflexes & Danger Detection)
][
- *语言能力*: 英语（流利），西班牙语（中级），技术/科学术语（高级）
- *专业技能*: 蛛丝发射器工程设计、空中杂技、犯罪现场调查、法医学、急救与紧急医疗反应、潜行战术、蛛丝感应（增强反射与危险侦测）
]

// Some other formatting functions:
// - #certificates(name: "", issuer: "", url: "", date: "")
// - #extracurriculars(activity: "", dates: "")

// There are also the following generic functions that don't apply any formatting:
// - #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
// - #generic-one-by-two(left: "", right: "")

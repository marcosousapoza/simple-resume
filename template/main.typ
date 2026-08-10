#import "@local/simple-resume:0.3.0": resume, entry

#show: resume.with(
  name: "Ada Lovelace",
  tagline: "Software Engineer",
  summary: [
    Computer Science student and software engineer with experience building
    scalable web services, developer tools, and data-driven products. Comfortable
    taking ideas from early prototypes to dependable implementations, with an
    emphasis on reliable systems, maintainable code, and thoughtful user experiences.
  ],
  phone: "(919) 110-0110",
  email: "adalove@gmail.com",
  address: "Chapel Hill, NC",
  links: (
    link("https://www.linkedin.com")[LinkedIn],
    link("https://github.com")[GitHub],
  ),
  // To add a portrait, use: photo: image("photo.jpg"),
  photo: none,
  photo-size: (width: 0.82in, height: 0.92in),
)

= Education

#entry(
  title: [University of North Carolina at Chapel Hill],
  location: [Chapel Hill, NC],
  date: [May 2027],
  subtitle: [B.S. in Computer Science, Minors in Data Science and Studio Art],
  grade: [3.7/4.0],
)
- *Relevant Courses:* Files and Databases, Modern Web Development, Mobile
  Operating Systems, Computer Organization, Data Structures, Algorithms &
  Analysis, Foundations of Programming
- *Honors:* Dean's List, Honors Carolina

= Technical Skills

*Languages (by proficiency):* Java, Python (Pandas, Matplotlib, Plotly, pytest),
JavaScript, C, Swift, TypeScript \
*Tools and Frameworks:* Node.js, React.js, AngularJS, Docker, PyTorch, Git \
*AI & Data Tools:* GitHub Copilot, OpenAI API

= Relevant Experience

#entry(
  title: [Amazon],
  location: [Seattle, WA],
  date: [June 2026 - Present],
  subtitle: [Software Development Engineer Intern],
)
- Designed and implemented a scalable backend microservice using *Java and AWS
  (Lambda, DynamoDB)* to automate internal data workflows, reducing API latency
  by *22%*
- Leveraged AI-assisted development tools to accelerate code generation and unit
  testing, achieving *95%+ code coverage* and cutting feature deployment cycles
  by *4 days*
- Reduced monthly cloud compute costs by *15%* through bottleneck analysis and
  legacy code refactoring

#entry(
  title: [UNC-Chapel Hill Department of Computer Science],
  location: [Chapel Hill, NC],
  date: [Aug. 2025 - May 2026],
  subtitle: [Undergraduate Teaching Assistant - Grading Lead],
)
- Mentored over *600* students enrolled in Introduction to Programming,
  explaining challenging concepts and fundamental programming knowledge to both
  Computer Science and non-technical majors
- Graded up to 6 exams a semester and developed *Python scripts* to organize
  large-scale grading efforts, while simultaneously hosting 10+ hours of office
  hours a week for students

#entry(
  title: [Fidelity Investments],
  location: [Durham, NC],
  date: [May 2025 - Aug. 2025],
  subtitle: [Software Engineering Intern],
)
- Developed a Node.js and Python web app that cut transaction latency by 10
  seconds through backend optimizations, using AI tools to accelerate development
  and debugging
- Partnered with an Agile pair-programming team to engineer scalable backend
  features, optimize SQL/API response times, and audit AI-generated code for quality

= Projects

#entry(
  title: [MusicBoxd],
  date: [Oct. 2025],
  subtitle: [HackNC],
)
- Partnered with a team of 3 and developed a fully functional *iOS App* with a
  dynamic *Swift* interface, real-time database retrieval using *Firebase*, and
  *Genius' API* for song and artist retrieval
- Awarded the Hack for Connectivity by *Pendo* and third place overall for the
  whole hackathon

= Leadership Experience

#entry(
  title: [UNC CS for Social Good],
  location: [Chapel Hill, NC],
  date: [Jan. 2025 - Present],
  subtitle: [CATCH Project Manager],
)
- Lead weekly meetings for CATCH, maintain project goals, and develop timelines
  for stages and deployment
- Contribute to backend development on a web-based application for a local
  non-profit, emphasizing database efficiency and optimized API calls to improve
  user experience and reduce wait time

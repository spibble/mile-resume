/*
* Hey, unless you know exactly what you're doing, you probably
* don't need to be in here!
*/

/*
* Lines that go between section headers and body text.
*   - The first v() controls space from the section header
*   - The second v() controls space from body text
*
*/
#let header_line() = {
  v(-3pt);
  line(length: 100%);
  v(-5pt);
}

/*
* Header for each section of the resume.
*/
#let section(name) = {
  heading(level: 2, name)
  header_line()
}

/*
* Header for an entry in the education section.
*/
#let education(school, date, degree, location) = {
  [
    *#school* #h(1fr) #date \
    #degree #h(1fr) #location
  ]
}

/*
* Header for an entry in the education section, including GPA.
*/
#let education_gpa(school, date, degree, gpa, location) = {
  [
    *#school* #h(1fr) #date \
    #degree, #gpa GPA #h(1fr) #location
  ]
}

/*
* Header for an entry in the experience section.
*/
#let experience(place, dates, position, location) = {
  [
    *#place* #h(1fr) #dates \
    #position #h(1fr) #location
  ]
}

/*
* Header for an entry in the projects section.
*/
#let project(project, tools) = {
  [
    *#project* | #tools #h(1fr)
  ]
}

/*
* Header for an entry in the projects section with a date.
*/
#let project_date(project, tools, date) = {
  [
    *#project* | #tools #h(1fr) #date
  ]
}

/*
* Header for an entry in the projects section with a source code link.
*/
#let project_code(project, tools, source) = {
  [
    *#project* | #tools #h(1fr) #fa-icon("github") #link([#source])[Link]
  ]
}

/*
* A nicely-formatted list of skills.
*/
#let skill_list(skill, list) = {
  [
    *#skill*: #list \
  ]
}
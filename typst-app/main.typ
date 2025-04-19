/*
* This resume template draws heavy inspiration from chicv, with a
* few of my own tweaks and some extra comments for further custom-
* ization. Check out the original: https://github.com/skyzh/chicv
*/

/*
* ===========================================================
* IMPORTS
* ===========================================================
*/

// Used for icons in contact information
#import "@preview/fontawesome:0.5.0": *

#import "templates.typ": header_line, section, education, education_gpa, experience, project, skill_list

/*
* ===========================================================
* FORMATTING CONFIGURIZATION
* ===========================================================
*/

/*
* Page intitialization.
*   - If you are in the US, just use us-letter.
*   - Margins should be between 0.5 and 1 inch (1.2 - 2.5cm).
*/
#set page(
  paper: "us-letter",
  margin: (x: 1.27cm, y: 1.27cm)
)

/*
* Font selection. 
* Choose what you like, but some common choices are:
*   - Serif: Times New Roman, Georgia, EB Garamond, Computer Modern
*   - Sans serif: Arial, Calibri, Roboto, Noto Sans, Fira Sans
* If you want to use 2 fonts, try mix and matching (i.e., choosing
* a serif font for headings and a sans serif font for body text.)
*/
#show heading: set text(font: "IBM Plex Sans")
#set text(font: "IBM Plex Serif")

/*
* Deeper font customization.
* This includes things like font size, spacing, etc. 
*   - Level 1 header (name) can be between 16 and 24pt
*   - Level 2 header (section headings) can be between 12 and 14pt
*   - General font size SHOULD be between 10 and 12pt (though
*     specific fonts can also vary in size at the same pt size)
*   - Line spacing should be between 1.0em and 1.5em.
*   - I personally don't think body text should be justified, but
*     the option is there for you to uncomment if you want.
*/
#show heading.where(level: 1): set text(black, 24pt)
#show heading.where(level: 2): set text(blue, 14pt)
#show heading.where(level: 3): set text(black, 12pt)
#set text(10pt)
#set par(spacing: 1.3em)
#show link: underline
// #set par(justify: true)

/*
* ===========================================================
* PERSONAL INFORMATION CONFIGURATION
* ===========================================================
*/

#let name_contact() = {
  table(
  columns: (2fr, auto),
  align: (left + horizon, right + horizon),
  stroke: none,
  inset: 0pt,
  [= Dwight Schrute],
  [
    #fa-icon("location-dot", fill: red) 
      Scranton, PA
      #h(0.2cm)
    #fa-icon("phone-square", fill: green) 
      1-800-984-3672
      #h(0.2cm)
    #fa-icon("envelope-square", fill: teal) 
      #link("mailto:mail@website.com")
    \
    // Uncomment if you have a personal website link
    /*
    #fa-icon("globe", fill: eastern) 
      #link("https://your.website")[your.website]
      #h(0.3cm)      
    */
    #fa-icon("linkedin", fill: blue)
      #link("https://linkedin.com/")[linkedin.com]
      #h(0.3cm)
    #fa-icon("github")
      #link("https://github.com")[github.com]
  ]
)
}

// Use this one if you have a long name, or prefer a more traditional format
#let name_contact_long() = {
  [#set align(center)
  
    = Dwight Schrute
    #fa-icon("location-dot", fill: red) 
      Place, Japan
      #h(0.2cm)
    #fa-icon("phone-square", fill: green) 
      (123) 456-7890
      #h(0.2cm)
    #fa-icon("envelope-square", fill: teal) 
      #link("mailto:mail@website.com")
      #h(0.2cm)
    #fa-icon("globe", fill: eastern) 
      #link("https://your.website")[your.website]
      #h(0.2cm)      
    #fa-icon("linkedin", fill: blue)
      #link("https://linkedin.com/")[linkedin.com]
      #h(0.2cm)
    #fa-icon("github")
      #link("https://github.com")[github.com]
  ]
}

/*
* ===========================================================
* RESUME BODY STARTS HERE
* ===========================================================
*/

// Replace with #name_contact_long() if using the alternative style
#name_contact_long()

#section("Education")

#education(
  [Scranton University], 
  [Sep. 1992 -- Apr. 1998], 
  [B.A., Business Administration], 
  [Scranton, PA]
)
- Awarded "Most Determined Student" in senior year

#section("Experience")

#experience(
  [Regional Manager],
  [May 2013 -- Present],
  [Dunder Mifflin],
  [Scranton, PA]
)
- Led a team of 10+ employees, boosting office productivity and morale
- Maintained the highest sales average, outperforming competitors despite market challenges
- Implemented innovative security measures to protect the office from threats, including criminal activity and wildlife intrusions
- Successfully negotiated client contracts, increasing annual revenue by 20%

#experience(
  [Assistant (to the) Regional Manager],
  [Mar. 2008 -- Mar. 2013],
  [Dunder Mifflin],
  [Scranton, PA]
)
- Developed and enforced company policies through the creation of the "Scrute Bucks" incentive program, improving employee engagement
- Achieved record-breaking sales, earning the title of top salesperosn for five consecutive years
- Supported managerial functions, including staff supervision, client relationship management, and strategic planning

#experience(
  [Sales Associate],
  [Mar. 2008 -- Mar. 2008],
  [Staples],
  [Scranton, PA]
)
- Recognized as "Employee of the Month" for outstanding sales performance within a single month
- Leveraged exceptional customer service sills to build a loyal client base
- Demonstrated leadership by training new hires on effective sales techniques

#experience(
  [Assistant (to the) Regional Manager],
  [Mar. 2005 -- Mar. 2008],
  [Dunder Mifflin],
  [Scranton, PA]
)
- Exceeded individual sales taargets, contributing significantly to branch profitability
- Introduced "Schrute Bucks" as a motivational tool, fostering a competitive & collaborative work environment
- Assisted in coordinating office events and intiatives to maintain team cohesion

/* 
* Uncomment this if you have additional experience which may
* not be directly related to the positions you're applying for,
* or if you just want to highlight other positions more.
*/
// #section("Additional Experience")

#section("Projects")
#project(
  [Schrute Farms (Bed and Breakfast)],
  [Sales Expertise, Leadership, Hardworking]
)
- Established and managed a family-run agro-tourism business offering unique activities such as table-making workshops, beet farming tours, and hay rides
- Increased guest bookings fby 50% through effective online markieting and guest engagement
- Maintained a 4.9/5 guest satisfaction rating on travel review platforms

#project(
  [Dwight Schrute's Gym for Muscles],
  [Alpha Male, Strategic Planning, Leadership]
)
- Designed and equipped a workplace gym, promoting health and wellness for Dunder Mifflin employees
- Created a recycling program, offering monetary incentives (5 cents/yd. of tin) to encourage sustainable practices

#section("Skills")
#skill_list(
  [Professional Skills],
  [Sales Expertise, Leadership, Conflict Resolution, Strategic Planning, Negotiation]
)
#skill_list(
  [Personal Traits],
  [Hardworking, Alpha Male, Jackhammer, Merciless, Insatiable]
)
#skill_list(
  [Specialized Talents],
  [Karate (Black Belt), Jujitsu, Werewolf Hunting, Table Making]
)


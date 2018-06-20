# Actorolo

A web app allowing actors and other theater/entertainment professionals to meticulously document their industry network

## Overview

For an actor, the network is everything. Unless you're blessed with a fantastic memory for people, how do you keep track of the hundreds of introductions you might have over the course of a year?

Many actors I know rely on meticulously-kept journals and excel spreadsheets. But of course, flipping through all that is a pain. So, I developed Actorolo.

Actorolo allows entries for Contacts, Events, and Projects. Contacts are any industry professional. Events are any one-off--be it an audition, a reading, or just a run-in on the street. Projects are longer-form professional work that the user has either participated in or just witnessed from afar.

The power of Actorolo is its network of associations and the ease with which they can be filtered and searched. For example, an actor preparing for an upcoming audition might look at the casting director they are meeting. At a glance, they will be reminded of any notes they wish to take about the CD (likes/dislikes, appearance, etc.), every time they have personally met this person and in what context, and what this person has worked on in the past.

As an actor's database continues to populate, new associations will emerge that would ordinarily have escaped the eye. You will start to know who knows who and from where, providing the opportunity for name-dropping or reaching out to trusted contacts for a referral or useful info ahead of a meeting.

As of this launch, every user is entirely insulated from other users' databases. This is because some professionals might wish to keep their contact info private from anyone they have not specifically given it to. In future builds, certain industry pros like casting directors may have publicly-accessible profiles filled with their projects (with customizable events for individual users).

## How To

Actorolo increases exponentially in usefulness the more it is used. To begin, a user signs up and confirms their account. From there, they can start adding Contacts, Events, and Projects through easy-to-navigate forms that provide the user with a good mix of detail, organization, and customization. After an Contact, Event, or Project is created, it becomes available for associating in all future creations. Throughout all the forms and show pages, filtering and search functionalities abound so that you are never left digging through a large table or dropdown list.

## Technical Specs

- Built with Rails 5.2 and a PostGreSQL database
- A series of joins tables provides seamless associations
- Devise gem for handling user sign-up/in and SendGrid for sending confirmation/password reset emails
- PgSearch for site-wide searching
- Data-tables for filtering and pagination of associations
- Bootstrap-multiselect for dropdown menus
- ActiveStorage for image uploading

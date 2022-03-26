# Unplanned

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
App that takes points of interest around a given area and chooses one of those for the user to go to either completely random or based on criteria. 

### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Food and Entertainment
- **Mobile:** This app would primarily be developed for mobile use but could also be viable on a desktop. Mobile features may include realtime geolocation updates that will help determine the range of the user. 
- **Story:** Takes the Points of Interest around the location of the user and randomizes based on criteria. You can choose criteria based on your needs: If you want to just try new mexican food then do just that. If you want to go to popular club that people have been flocking to but you just don't know about yet. Or there may be a bar so lowkey that you have to be lucky to find. The potential is vast. 
- **Market:** This app can be useful to those are indecisive or just looking to try new things. 
- **Habit:** This app could be used as often as one is hungry, or they want to in a park, or are bored and want something to do. The habit could really develop to those are want a mystery to their day or night.
- **Scope:** The app would start as a simple randomizer, but could develop into a social hub for those who wish to share their experiences. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**
* User sees an app icon on the home screen and a styled launch screen
* User can log in 
* User can register a new account
* User can see categories based on entertainment and food. 
* User can select categories and enter in parameters which will give the app something to randomize points of interest (POI) from and return a selection. 
* Users can view returned POI(s).
* Users can re-randomize if they're not satisfied with the selection.
* Users can view the details of the selection like restaurant hours, rating, prices, etc..
* Users can view their liked POIs in their profile page. 
* Lets users change language, and app notification settings.


**Optional Nice-to-have Stories**

* Users can rate the places they've been to.
* Users can see the places they've been to. 
* Users can like or mark places they've been to and blacklist it to the randomizer so they can try completely new things.
* Users can re-randomize if they're not satisfied with the selection.
* User can see a map


### 2. Screen Archetypes

* Launch Screen
   * User sees an app icon on the home screen and a styled launch screen
   * ...
* Login Screen
   * User can log in 
   * ...
* Register Screen
   * User can register a new account
   * ...
* Stream
   * User can see categories based on entertainment and food. 
   * User can select categories and enter in parameters which will give the app something to randomize points of interest from and return a selection. 
   * Users can view returned POI(s).
   * Users can re-randomize if they're not satisfied with the selection.
* Detail
   * Users can view the details of the selection like restaurant hours, rating, prices, etc.. 
   * ...
* Profile
   * Users can view their liked POIs in their profile page. 
* Settings
   * Lets users change language, and app notification settings.

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Stream
* Profile
* Settings

**Flow Navigation** (Screen to Screen)

* Launch Screen
    *  -> Login 
    *  -> Register
* Login Screen
    *  -> Stream
* Register Screen
    *  -> Stream
* Stream
    *  -> Detail
* Detail
    *  -> None
* Profile
    *  -> Detail
* Settings
    *  -> None

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="YOUR_WIREFRAME_IMAGE_URL" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]

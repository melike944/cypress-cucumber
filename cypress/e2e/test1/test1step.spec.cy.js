import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps';



Given('I visit https://www.thegreatcourses.com/',()=>{
    
cy.visit('https://www.thegreatcourses.com/');


})
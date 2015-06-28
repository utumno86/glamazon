Glamazon
================
# Week 8 - Day 4

## Description

Create an eCommerce platform with Stripe, Inventory, Emails, and a shopping cart. Have fun with it, create a concept for your store. Is there a narrative, what are you selling? To who?

## Objectives

### Learning Objectives

After completing this assignment, you should…

* Understand the technical challenges in accepting moneys online
* Integrate with external APIs

### Performance Objectives

After completing this assignment, you be able to effectively use

* [Stripe](https://stripe.com/)
* Emailing on Heroku with [Mandrill](http://www.mandrill.com/)
* [Payola engine](https://www.payola.io/)
* [RailsAdmin](https://github.com/sferik/rails_admin) or [ActiveAdmin](http://activeadmin.info/)
* Friendly SEO ids and page titles

### Deliverables

A repo containing at least:

- [ ] Seeded Products
- [x] A restricted backend using RailsAdmin or ActiveAdmin.
- [ ] Stripe purchasing with Stripe Checkout
  - [ ] Stripe should be in test mode

### Requirements

- [ ] a Rails app, live on Heroku
- [x] a layout that looks "not-embarassing"
- [ ] a checkout process with a shopping cart, shipping, and billing information

## Normal Mode

Your products are listing on the homepage, and can be added to a cart.  

Your cart will list the items in the cart; adding a product to the cart again will increase the quantity, rather than adding another cart item. You should be able to edit the quantity and should be able to delete a cart item.

Your checkout process should be secure, and use Stripe Checkout -- the payola checkout is recommended.

Use RailsAdmin or ActiveAdmin for administration of your app.

## Hard Mode

Everything in Normal mode, plus:

1. Add a search engine that will let you search for items.

2. When you add an item to the cart, stay on that page and give visual feedback to the user by a) the cart icon in the header b) change the "Add to cart" button to be text with "Added to Cart [View Cart](#)"

3. Create a "receipt" page that you can email to them securely, viewable without sign in

4. Email the user a receipt, with a link to the receipt page, upon successful purchase.

## Nightmare Mode

1. Enhance the search engine to auto-complete results. Include a custom template on results that shows a thumbnail of the image as well as

2. On results of the search engine, allow them to query by price "< $50" and ">= $50"

3. Allow users to see their previous purchases

4. Enable "Paper Trail" to see how sales change over time and integrate with Payola.

5. Use a custom domain name

6. Secure Rails Admin with custom authentication (or devise for an Admin User)

## Notes

Passwords and Credit Cards should never be logged or stored in plain text.

You do not have to use the Payola gem, but it sure is nice.

Mandrill is my go-to emailing service.

===================================

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

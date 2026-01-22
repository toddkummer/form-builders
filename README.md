# Form Builders, Form Helpers, and Tags

This code shows three options for implementing a custom date picker in a Rails application:

- adding an application helper
- creating a custom form builder
- overriding the `date_field` helper

Each option has a before and after branch. The after branch is just the before with the suffix `-solution`:

- application-helper
- custom-form-builder
- override-helper

No spoilers here, you'll need to check out each branch to see the implementation details!

## Supporting Libraries

This sample application uses the following libraries:

- Phlex Rails: This makes it easy to focus on the form builder.
- [Stimulus Datepicker](https://github.com/airblade/stimulus-datepicker): This is the JavaScript library used to create the date picker UI.
- Font Awesome: This is used for the calendar icon in the date picker.

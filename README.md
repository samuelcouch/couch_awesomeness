# Planning Center Exercises

## Contents

### /models/
  * **awesomeness.rb** contains the Awesomeness class and associated methods. Awesomeness accepts and array of Person objects.
  * **person.rb** contains the Person class.

### /spec/
  * **awesomeness_spec.rb** contains tests for the Awesomeness class.
  * **person_spec.rb** contains the tests for ther Person class.

### /zebra/
  * **index.html** is the index page which contains the zebra-striping example.
    * This example is dependant on the Twitter Bootstrap framework which is included.

### main.rb
  * Contains a demo of the Person and Awesomeness classes.

To run Awesomeness tests:

    bundle install
    rspec

To run Awesomeness demo:

    ruby main.rb

To run Zebra-striping example:

    open index.html in your browser
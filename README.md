# ternary

*If variable exists then output it, otherwise output the alternative. The ternary filter allows you to test whether a variable exists or is true. If the variable exists or is true then that variable will then be output to the screen. However if it is false or doesn't exist then it will output the ternary parameter which can either be a supplied string or variable.*

### Usage

    {{ variable | ternary: parameter }}

### Parameters

- `variable` string. required. The content to output if it exists.
- `parameter` **string. required. The content to output if `variable` does not exist. How does this all look if this wraps to a new line

### Return

- string. This will output either the contents of `variable` or `parameter`.

## Example

### **Input**

    {% assign featured_image = "" %}
    {% assign default_image = "http://placehold.it/200x200" %}
    
    <div class="featured-image">
    	<img src="{{ featured_image | ternary: default_image }}">
    </div>

In this example we will utilize `ternary` to check if a featured image is set for a given page. If it isn't set then we'll supply a fallback image.

### **Output**

    <div class="featured-image">
    	<img src="http://placehold.it/200x200">
    </div>

Since we didn't define featured_image in the front matter of about.html it defaulted to the featured_image we set in the `_config.yml` file.

# Example 'Letter Writing' demonstrating Matlab coding style

An example of Matlab code, that demonstrates some topics covered in the
presentation 'Pelkmans Matlab Coding Style'.

The example programs generates text for a letter, either addressed to
a specific person (personal) or anonymously.

The text of each letter must
be word-wrapped to 80 characters.

The current date (when the function is called) is included.

## Coding
1. There's many multi-line matlab statements (the ... at the end!)
2. Don't worry if you don't understand all of 'wrapNameAddress.m', it does some cell-array stuff.

## Public vs Private
1. There are just two public functions. This gives a small, easy-to-understand interface to the outside world.
2. There are several private functions in [private/](private/). These are only visible within the folder.

## Functions and Lines of Code
1. Each function has few lines of code, but there are many functions.
2. Functions are used, not just to avoid repetition, but to explain to the user what is happening e.g. createRecipientHeader exists only for a descriptive purpose.

## Third Party Code
* The code employs a third-party function downloaded from the internet (linewrap.m). It is located in 'lib'.
* By adding a '+' in the folder name, it was turned into a package, and the 'import' statement must be used to call it (e.g. in wrapNameAddress.m)
* I added a 'source.txt' file in the +linewrap folder, to indicate where/when the code was downloaded from the internet.

## Comments
* The public functions are commented strictly using the Function Comment Template, including a description, arguments (including type), side-effects, author contact information.
* The private function are less comprehensively commented. The less-intuitive functions (createBody.m, wrapNameAddress.m) have a lot of information. Others have little.

## Testing
There are two tests in the 'tests' folder, one for each public function.

To run the tests, add the folder (and sub-folders) to your Matlab path,
and run the command

```
results = runtests('testComposeLetters.m')
```

## You're welcome!

Feel free to write me a thank-you letter.

```
composePersonalLetter('A Happy Lab-Member', ...
    {'Pelkmans Lab';'IMLS';'University of Zurich'}, ...
    'Thanks for the great work, have a nice weekend!', ...
    'Owen Feehan', ...
    {'Pelkmans Lab/S3IT';'University of Zurich'} ...
 )
```



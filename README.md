# Example 'Letter Writing' demonstrating Matlab coding style

An example of Matlab code, that demonstrates some topics covered in the
presentation 'Pelkmans Matlab Coding Style'.

Please see the [Matlab Coding Style Rules](https://github.com/pelkmanslab/iBRAIN_UZH/tree/master/doc/CodingStyle/Matlab).

##  Requirements of Example Program

1. Generate text for a letter, either addressed to
a specific person (personal) or anonymously.
2. Text is word-wrapped to 80 characters.
3. The current date is included, at the point the function is called.

## Coding
1. There's many multi-line matlab statements (the ```...``` at the end of each line!)
2. Don't worry if you don't understand all of [wrapNameAddress.m](private/wrapNameAddress.m), it does some cell-array stuff.

## Public vs Private
1. There are just two public functions ([composePersonalLetter.m](composePersonalLetter.m) and [composeAnonymousLetter.m](composeAnonymousLetter.m)). This gives a small, easy-to-understand interface to the outside world.
2. There are several private functions in [private/](private/). These cannot be called outside this folder.

## Functions and Lines of Code
1. Each function has few lines of code, but there are many functions.
2. Functions are used, not just to avoid repetition, but to explain to the user what is happening e.g. [createRecipientHeader.m](private/createRecipientHeader.m) exists only for a descriptive purpose.

## Third Party Code
* The code employs a third-party function downloaded from the internet [linewrap.m](lib/+linewrap/linewrap.m). It is located in [lib](lib).
* By adding a '+' in the folder name, it was turned into a package, and the 'import' statement must be used to call it (e.g. in [wrapNameAddress.m](private/wrapNameAddress.m))
* I added a [source.txt](lib/+linewrap/source.txt) file in the [+linewrap](lib/+linewrap) folder, to indicate where/when the code was downloaded from the internet.

## Comments
* The public functions are commented strictly using the Function Comment Template, including a description, arguments (including type), side-effects, author contact information.
* The private function are less comprehensively commented. The less-intuitive functions ([createBody.m](private/createBody.m), [wrapNameAddress.m](private/wrapNameAddress.m)) have a lot of information. Others have little.

## Testing
There are two tests in the [tests](tests/) folder, one for each public function.

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



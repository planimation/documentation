# Documentation

[http://planimation.github.io/documentation](http://planimation.github.io/documentation)


## Contribution

When contributing to this repository, please adhere to the below guidelines.

### Create an issue

- Before pushing code to the repo, it is required to [create an issue](https://github.com/planimation/documentation/issues) along with a brief description so that peer developers can review, provide suggestions and feedback.
- Create a new issue to obtain `ISSUE_NO`.


### Commit message format

- Set the commit template as follows:
    ```
    git config user.name "Your Full Name"
    git config user.name "Your GitHut email"
    git config commit.template .gitmessage
    ```
- Commit message should be of the following format `[ISSUE_NO] COMMIT_MESSAGE`. Refer [`.gitmessage`](.gitmessage). Example:
    ```
    [10] Fix security issue related with form
    
    * Updated lib dependency version
    * Fixed something
    * Fixed other thing
    
    Resolves #10
    ```

### Pull Request and peer code review process

**Please note that you cannot push directly to `develop` nor `master` branches.**

- Create a new branch and push the changes to this branch.
- Create a PR and add at least one peer reviewer.
- You may merge your branch to `develop` once your PR is approved by your peer reviewer.
- If you do not have permission to merge the PR, please contact the reviewer to merge it for you.
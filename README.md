# install-tensorflow-action
Install TensorFlow C API as a step in a GitHub workflow.

### Use

```
  steps:
    - uses: UCL/install-tensorflow-action@main
      with:
        version: 2.11.0
        os: linux
```

Operating systems available:
- Linux ("linux")
- Windows ("windows")
- MacOS ("darwin")

Default options are version 2.11.0 and Linux.

### Note on macOS

When installing Tensorflow on GitHub runners, the `LD_LIBRARY_PATH` variable that is set in this action for macOS is not carried over from one step in a job to the later steps so it might not be able to find Tensorflow headers. You can add the variable to the GitHub runner's environment variables that do persist using `echo "LD_LIBRARY_PATH=/usr/local/lib" >> "${GITHUB_ENV}"`. See [GitHub Actions documentation](https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#setting-an-environment-variable) for more details.

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

Default options are version 2.9.1 and Linux.

# install-tensorflow-action
Install TensorFlow C API as a step in a GitHub workflow.

### Use

```
  steps:
    - uses: brianjjones/install-tensorflow-action
      with:
        version: 2.11.0
        os: linux
```

Operating systems available:
- Linux ("linux")
- Windows ("windows")
- MacOS ("darwin")

Default options are version 2.9.1 and Linux.

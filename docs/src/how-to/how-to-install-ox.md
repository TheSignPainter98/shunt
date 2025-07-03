# How to install `ox`

<!-- TODO(kcza): release in the docs site to be shown at kcza.net/ox/ox -->
<!-- TODO(kcza): reinstate when ready. -->
<!-- **NOTE**: If you already have a working `ox` marshal and wish to create more nodes, read [how to create an installer disk](./how-to-create-an-installer-disk.md). -->

## You will need

- A computer block
- An internet connection

## Complete the following steps

1. Open the computer.
2. If there are any programs running, terminate them by holding `Ctrl+T`.
3. If the shell is not in the root directory (i.e. the prompt looks like `some/path>`), type and run---
   ```bash
   cd /
   ```
4. Type and run the following command---
   ```bash
   wget https://kcza.net/ox/ox
   ```
   You should now be able to see the following text---
   ```
   Connecting to https://kcza.net/ox/latest... Success.
   Downloaded as ox
   ```
5. Type and run the following command---

   ```bash
   ox --version
   ```

   You should see the following text---

   ```
   ox {{#version}}
   ```

   You have now installed `ox`.

<!-- TODO(kcza): reinstate when ready. -->
<!-- Next step: read [how to create a marshal](./how-to-create-a-marshal.md). -->

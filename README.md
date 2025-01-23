# Dockerfile CMD with && Operator Issue

This repository demonstrates a common issue encountered when using the `&&` operator to chain multiple commands within the `CMD` instruction of a Dockerfile.  The problem arises because the shell used to execute the command isn't always what is expected.  The initial command may succeed, however, subsequent commands may fail to run as intended.

**Bug:** The provided Dockerfile attempts to install Python dependencies using pip and then run the application. While pip install works, the application execution does not due to a shell execution issue.

**Solution:** The solution uses `&&` operator with `SHELL` in the Dockerfile. This provides the correct shell context and executes all commands correctly.
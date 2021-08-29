# devcontainer

Post create command in remote-containers.

## Visual Studio Code Extensions

- [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)

## Usage

Add the URL of the script to `postCreateCommand` in devcontainer.json.

### .devcontainer/devcontainer.json

```json
"postCreateCommand": "curl -sf https://raw.githubusercontent.com/ystk-kai/devcontainer/master/commands/debian/setup.sh | bash -s",
```

### .devcontainer/Dockerfile

```dockerfile
RUN curl -sf https://raw.githubusercontent.com/ystk-kai/devcontainer/master/commands/debian/setup.sh | bash -s
```

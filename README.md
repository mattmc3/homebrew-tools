# homebrew-tools

Personal Homebrew tap for custom formulas.

## Installation

```sh
brew tap mattmc3/tools
brew install prj
brew install pather
```

## Updating Formulas

### Local Script

The included helper script updates formulas. The script uses the `homepage` field to determine the GitHub repo and constructs the appropriate tarball URL:

```sh
# Update all formulas to latest tags
bin/update-formula

# Update specific formula to latest tag
bin/update-formula prj

# Update formula to a specific version
bin/update-formula prj v1.0.2
```

The script will:
- Extract the GitHub repo from the `homepage` field
- Use the specified version, or fetch the latest tag if no version is provided
- Download the tarball and calculate SHA256
- Update both `url` and `sha256` fields in the formula

### GitHub Actions

Automatically update formulas via GitHub Actions:

1. Go to the **Actions** tab in this repository
2. Select **Update Formulas** workflow
3. Click **Run workflow**
4. Options:
   - Leave formula field empty to update all formulas
   - Or enter a specific formula name like `prj`
   - Optionally specify a version tag to update to a new release
5. The workflow constructs URLs from the homepage, downloads tarballs, and updates both URL and SHA256

### Manual

Calculate SHA256 manually:

```sh
# Extract URL from formula and calculate SHA256
URL=$(grep 'url "' Formula/prj.rb | sed 's/.*url "\(.*\)".*/\1/')
curl -L "$URL" | shasum -a 256
```

## License

MIT License

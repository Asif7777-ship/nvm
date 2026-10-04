# Compatibility wrapper. Canonical entrypoint: .\build\main.ps1
& (Join-Path $PSScriptRoot "build\main.ps1") @args
if ($null -ne $LASTEXITCODE) {
	exit $LASTEXITCODE
}
- name: Set up Node.js
  uses: actions/setup-node@v4
  with:
    node-version: ${{ env.NODE_VERSION }}

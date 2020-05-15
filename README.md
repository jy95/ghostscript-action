# ghostscript-action

This action gives you the possibility to execute a [Ghostscript](https://www.ghostscript.com/) command in your workflows.

## Inputs

### `file`

**Required** The PDF file we want to compress.

### `output`

The name of the resulting PDF file.  Default `"compressed.pdf"`.

### `arbitrary-parameters`

Extra arguments to be passed to Ghostscript (except sDEVICE, dNOPAUSE, dQUIET, dBATCH and sOutputFile that cannot be set)

## Example usage

```yaml
name: Compress PDF document
on: [push]
jobs:
    compress_pdf:
        runs-on: ubuntu-latest
        steps:
            - name: Set up Git repository
              uses: actions/checkout@v2 
            - name: Compress PDF
              uses: jy95/ghostscript-action@v1  
              with:  
                file: 'main.pdf'  
                output: 'main-compressed.pdf'  
                arbitrary-parameters: '-dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer'  
```

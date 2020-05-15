# ghostscript-action

This action gives you the possibility to execute a ghostscript command in your workflows.

## Inputs

### `file`

**Required** The PDF file we want to compress.

### `output`

The name of the resulting PDF file.  Default `"compressed.pdf"`.

### `arbitrary-parameters`

Extra arguments to be passed to Ghostscript (except sDEVICE, dNOPAUSE, dQUIET, dBATCH and sOutputFile that cannot be set)

## Example usage

uses: jy95/ghostscript-action@v1
with:
  file: 'main.pdf'
  output: 'main-compressed.pdf'
  arbitrary-parameters: '-dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer'
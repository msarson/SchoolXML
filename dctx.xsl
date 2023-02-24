<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Version 0.7 -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>

    <head>
      <meta charset="utf-8">
      </meta>
      <meta name="viewport" content="width=device-width, initial-scale=1">
      </meta>
      <title>Dictionary Viewer</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
      </link>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    </head>

    <body>
      <div class="container-fluid mt-3">
        <h1>Clarion Dictionary: <xsl:value-of select="Dictionary/@Name" />
        </h1>
        <table class="table table-striped table-bordered">
          <thead  class="table-success">
            <tr>
              <th>Table</th>
              <th>Description</th>
              <th>Prefix</th>
              <th>Driver</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="/Dictionary/Table">
              <xsl:sort select="@Name" />
              <tr>
                <td><a href="#{@Name}"><xsl:value-of select="@Name" /></a></td>
                <td><xsl:value-of select="@Description" /></td>
                <td><xsl:value-of select="@Prefix" /></td>
                <td><xsl:value-of select="@Driver" /></td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </div>
      <xsl:apply-templates/>
    </body>
    </html>
  </xsl:template>

  <xsl:template match="Table">
    <div class="container-fluid">
      <div class="card">
        <div class="card-header" id="{@Name}">
          <div class="row">
            <div class="col-sm-10 h2">Table: <xsl:value-of select="@Name" /></div>
            <div class="col-sm-2">
            </div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Description</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@Description" /></div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Prefix</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@Prefix" /></div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Driver</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@Driver" /></div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Driver Option</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@DriverOption" /></div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Owner</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@Owner" /></div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Path</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@Path" /></div>
          </div>
          <div class="row">
            <div class="col-sm-2">
              <p class="h6">Thread</p>
            </div>
            <div class="col-sm-10"><xsl:value-of select="@Thread  " /></div>
          </div>
        </div>
        <div class="card-body">
          <table class="table table-striped table-bordered">
            <thead class="table-success">
              <tr>
                <th>Field</th>
                <th>Description</th>
                <th>Data Type</th>
                <th>Size</th>
              </tr>
            </thead>
            <tbody>
              <xsl:apply-templates select="Field" />
            </tbody>
          </table>
        </div>
      </div>
    </div>

  </xsl:template>
  <xsl:template match="Field">
    <tr>
      <td><xsl:value-of select="@Name" /></td>
      <td><xsl:value-of select="@Description" /></td>
      <td><xsl:value-of select="@DataType" /></td>
      <td><xsl:value-of select="@Size" /></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
<?xml version="1.0" encoding="ISO-8859-1"?>
<!-- Version 0.7 -->
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Clarion Dictionary <xsl:value-of select="Dictionary/@Name"/>
        </h1>
        <table border="1" width="100%">
          <tr bgcolor="#9acd32">
            <th>Table</th>
            <th>Description</th>
            <th>Prefix</th>
            <th>Driver</th>
          </tr>
          <xsl:for-each select="/Dictionary/Table">
            <xsl:sort select="@Name"/>
            <tr>
              <td>
                <xsl:value-of select="@Name"/>
              </td>
              <td>
                <xsl:value-of select="@Description"/>
              </td>
              <td>
                <xsl:value-of select="@Prefix"/>
              </td>
              <td>
                <xsl:value-of select="@Driver"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <xsl:apply-templates/>

      </body>
    </html>
  </xsl:template>

  <xsl:template match="Table">
    <h2>
      <xsl:value-of select="@Name"/>
    </h2>
    <p>
      <xsl:value-of select="@Description"/>
    </p>
    <table border="0" width="50%">
      <tr>
        <td>Prefix</td>
        <td>
          <xsl:value-of select="@Prefix"/>
        </td>
      </tr>
      <tr>
        <td>Driver</td>
        <td>
          <xsl:value-of select="@Driver"/>
        </td>
      </tr>
      <tr>
        <td>Driver Option</td>
        <td>
          <xsl:value-of select="@DriverOption"/>
        </td>
      </tr>
      <tr>
        <td>Owner</td>
        <td>
          <xsl:value-of select="@Owner"/>
        </td>
      </tr>
      <tr>
        <td>Path</td>
        <td>
          <xsl:value-of select="@Path"/>
        </td>
      </tr>
      <tr>
        <td>Thread</td>
        <td>
          <xsl:value-of select="@Thread"/>
        </td>
      </tr>
    </table>
    <p>-</p>
    <table border="1" width="100%">
      <tr bgcolor="#9acd32">
        <th>Field</th>
        <th>Description</th>
        <th>Data Type</th>
        <th>Size</th>
      </tr>
      <xsl:apply-templates select="Field"/>
    </table>

  </xsl:template>

  <xsl:template match="Field">
    <tr>
      <td>
        <xsl:value-of select="@Name"/>
      </td>
      <td>
        <xsl:value-of select="@Description"/>
      </td>
      <td>
        <xsl:value-of select="@DataType"/>
      </td>
      <td>
        <xsl:value-of select="@Size"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet> 
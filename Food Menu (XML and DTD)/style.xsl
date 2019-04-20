<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
	<head>
		<style>
			table{
				margin:10px;
			}
			th, td{
				padding : 3px 10px;
			}
			th{
				color:#f0f0f0;
			}
		</style>
	</head>
	<body>
		<h1>Restaurant Menu</h1>
		<table border="1">
			<tr bgcolor="#00aaee">
				<th>Name</th>
				<th>Type</th>
				<th>Price</th>
			</tr>
			<xsl:for-each select="menu/item">
			<tr>
				<td><xsl:value-of select="name"/></td>
				<td><xsl:value-of select="type"/></td>
				<xsl:choose>
					<xsl:when test="price &gt; 75">
						<td bgcolor="red" color="white">
						<xsl:value-of select="price"/>
						</td>
					</xsl:when>
					<xsl:otherwise>
						<td>
						<xsl:value-of select="price"/>
						</td>
					</xsl:otherwise>
				</xsl:choose>
			</tr>
			</xsl:for-each>
		</table>
	</body>
</html>

</xsl:template>
</xsl:stylesheet>
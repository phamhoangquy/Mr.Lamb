<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="count/ProductList/Product) > 0">
				<ul>
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				</ul>
			</xsl:when>
			<xsl:otherwise>
				<div class="suggest-product-text">
					<xsl:value-of disable-output-escaping="yes" select="/ProductList/NoResults"></xsl:value-of>
				</div>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="Product">
		<li>

			<div class="image-wrap">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="content">
				<div class="title">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</a>
				</div>
				<xsl:if test="Price!=''">
					<div class="price">
						<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
					</div>
				</xsl:if>

			</div>
		</li>
	</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="sp-client">
			<div class="title-sp">
				<h2>
					<xsl:value-of disable-output-escaping="yes" select="/NewsList/ZoneTitle"></xsl:value-of>
				</h2>
			</div>
			<ul class="big-togglesupport">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</ul>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<li><a class="togglesupport">
				<xsl:text>0</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				<xsl:text>. </xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</a>
			<div class="content">
				<div class="caption">
					<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
				</div>
			</div>
		</li>
	</xsl:template>

</xsl:stylesheet>

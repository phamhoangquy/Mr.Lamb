<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="side-navigation-bottom ajaxfilterresponse">
			<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Group">
		<xsl:if test="GroupId= '9' ">
			<div class="block_title_nation">
				<div class="title_nation">
					<h2>Quốc gia</h2>
				</div>
			</div>
			<div class="block_nation">
				<ul>
					<xsl:apply-templates select="Option" mode="Default"></xsl:apply-templates>
				</ul>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Option" mode="Default">

		<li class="checkbox">
			<a class="ajaxlink">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>ajaxlink active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>

	</xsl:template>

</xsl:stylesheet>

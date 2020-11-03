<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block_material">
			<xsl:attribute name="setBackground">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<div class="material-product">
							<div class="title-material">
								<h2>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h2>
							</div>
							<div class="content-material">
								<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
							</div>
							<xsl:if test="Url !=''">

								<div class="btn-view-more"><a>

										<xsl:attribute name="href">
											<xsl:value-of select="Url"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="title">
											<xsl:value-of select="Title"></xsl:value-of>
										</xsl:attribute>

										Tìm hiểu thêm
									</a></div>
							</xsl:if>

						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>

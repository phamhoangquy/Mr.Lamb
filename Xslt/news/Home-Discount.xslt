<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block_product-home-3">
			<div class="container">
				<div class="block-title">
					<div class="head-title">
						<h2>
							<xsl:value-of disable-output-escaping="yes" select="/NewsList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
				<div class="product-home-3-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="fal fa-chevron-left"></em></div>
					<div class="nav-arrow-next"><em class="fal fa-chevron-right"></em></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">
							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
		<div class="swiper-slide">
			<div class="wrapper">
				<div class="block-item">
					<div class="item__img">

						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute><img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="item__img-hover">
						<div class="content">
							<div class="more-view">

								<a>
									<xsl:attribute name="href">
										<xsl:value-of select="Url"></xsl:value-of>
									</xsl:attribute>
									<xsl:attribute name="title">
										<xsl:value-of select="Title"></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

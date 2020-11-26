<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="row">
			<div class="col-12 col-md-6 col-lg-6">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>

			<div class="col-12 col-md-6 col-lg-6">
				<div class="row">
					<xsl:apply-templates select="/ProductList/Product" mode='Side'></xsl:apply-templates>
				</div>
			</div>
		</div>

	</xsl:template>
	<xsl:template match="Product">
		<xsl:if test="position()=1">

			<div class="block_img">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="card_img-left">
						<div class="img zoom-in">
							<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							</img>
						</div>
						<xsl:if test="ShowOption > 0">
							<div class="promotion">
								<xsl:if test="floor(ShowOption div 2) mod 2 = 1">
									<div class="sale"><img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
									</div>
								</xsl:if>
								<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
									<div class="hot"><img src="/Data/Sites/1/media/img/product/new.png" alt="" />
									</div>
								</xsl:if>
							</div>
						</xsl:if>
					</div>
				</a>
				<div class="content-product">
					<div class="name_product">
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
					<xsl:if test="Price !=''">
						<div class="price">
							<p>
								<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
							</p>
						</div>
					</xsl:if>
					<xsl:if test="OldPrice !=''">
						<div class="discount">
							<p>
								<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
							</p>
						</div>
					</xsl:if>
				</div>
			</div>
		</xsl:if>

	</xsl:template>
	<xsl:template match="Product" mode='Side'>
		<xsl:if test="position()> 1 and position() &lt;6">
			<div class="col-sm-6 col-lg-6 col-xs-6">
				<div class="block_img_right"> <a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:if test="ShowOption > 0">
							<div class="promotion">
								<xsl:if test="floor(ShowOption div 2) mod 2 = 1">
									<div class="sale"><img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
									</div>
								</xsl:if>
								<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
									<div class="hot"><img src="/Data/Sites/1/media/img/product/new.png" alt="" />
									</div>
								</xsl:if>
							</div>
						</xsl:if>
						<div class="card_img">
							<div class="img zoom-in">
								<img>
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								</img>
							</div>
						</div>
					</a>
					<div class="content-product">
						<div class="name_product">
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
						<xsl:if test="Price !=''">
							<div class="price">
								<p>
									<xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
								</p>
							</div>
						</xsl:if>
						<xsl:if test="OldPrice !=''">
							<div class="discount">
								<p>
									<xsl:value-of disable-output-escaping="yes" select="OldPrice"></xsl:value-of>
								</p>
							</div>
						</xsl:if>
					</div>
				</div>
			</div>

		</xsl:if>

	</xsl:template>
</xsl:stylesheet>

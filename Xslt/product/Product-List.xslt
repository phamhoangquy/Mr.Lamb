<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="product-display ajaxresponse">
			<div class="block_name_category ">
				<div class="name_category">
					<h3>
						<xsl:value-of disable-output-escaping="yes" select="/ProductList/ZoneTitle"></xsl:value-of>
					</h3>
				</div>
				<div class="wrap-left">
					<div class="display display-option">
						<p>Hiển thị</p>
						<select class="ajaxsort">
							<xsl:apply-templates select="/ProductList/PageSize" />
						</select>
					</div>
					<div class="sort-wrapper ">
						<select class='ajaxsort'>
							<xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
						</select>
					</div>
				</div>
			</div>
			<div class="row ajaxresponsewrap">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-xl-4 col-sm-6 col-xs-6">
			<div class="big-product"><a>

					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
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
									<xsl:if test="floor(ShowOption div 4) mod 2 = 1">
										<div class="hot"><img src="/Data/Sites/1/media/img/product/best.png" alt="" />
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
		</div>
	</xsl:template>
	<xsl:template match="SortBy">

		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="PageSize">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
</xsl:stylesheet>

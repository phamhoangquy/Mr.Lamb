<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ProductList">
		<xsl:if test="count(Product) >0">
			<div class="cart-display-other">
				<div class="container">
					<div class="admin-title">
						<div class="text">Sản phẩm khuyến mãi khác</div>
					</div>
					<div class="four-swiper">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="Product" />

							</div>
						</div>
						<div class="swiper-nav-wrap">
							<div class="nav-arrow-prev">
								<div class="icon-prev"></div>
							</div>
							<div class="nav-arrow-next">
								<div class="icon-next"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product">

		<div class="swiper-slide">
			<div class="figure-product">
				<div class="overlay">
					<div class="btn-center">
						<a class="btn btn-primary primary mb-4"
							onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-cart"></em><span>Chọn mua</span>
						</a>
						<a class="btn btn-primary yellow">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<em class="mdi mdi-eye"></em><span>Chi tiết</span>
						</a>
					</div>
				</div>
				<xsl:if test="ShowOption > 0">
					<div class="promotion">
						<xsl:if test="floor(ShowOption div 2) mod 2 = 1">
							<span class="hot">Hot
								<xsl:value-of select="/ProductList/NewText"></xsl:value-of>
							</span>
						</xsl:if>
						<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
							<span class="new">New
								<xsl:value-of select="/ProductList/NewText"></xsl:value-of>
							</span>
						</xsl:if>
					</div>
				</xsl:if>
				<div class="figure-image">
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
					<xsl:if test="DiscountPercentage != ''">
						<div class="discount">
							<xsl:value-of select="DiscountPercentage" disable-output-escaping="yes" />
						</div>
					</xsl:if>
					<div class="color-wrapper">
						<xsl:apply-templates select="ProductColorImage"></xsl:apply-templates>
					</div>
					<div class="title">
						<a href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="Title" disable-output-escaping="yes" />
						</a>
					</div>
					<div class="product-id">
						<xsl:value-of select="Code" disable-output-escaping="yes" />
					</div>
					<div class="price-wrap">
						<span class="current">
							<xsl:value-of select="Price" disable-output-escaping="yes" />
						</span>
						<xsl:if test="OldPrice != ''">
							<span class="old">
								<xsl:value-of select="OldPrice" disable-output-escaping="yes" />
							</span>
						</xsl:if>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductColorImage">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="ProductUrl"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="style">
				<xsl:text>background:</xsl:text>
				<xsl:value-of select="ColorHexCode"></xsl:value-of>
				<xsl:text>;</xsl:text>
			</xsl:attribute>
		</a>
	</xsl:template>
</xsl:stylesheet>

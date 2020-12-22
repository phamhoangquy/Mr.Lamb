<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="block_product-home-1">
			<div class="container">
				<div class="head-title-zone">
					<div class="title">
						<div class="tab-panels">
							<ul class="tab-navigation-fashion">
								<xsl:apply-templates select="/ZoneList/Zone[Depth=0]"></xsl:apply-templates>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-wrapper-fashion">
					<xsl:apply-templates select="/ZoneList/Zone[Depth=0]" mode='Tab'></xsl:apply-templates>
				</div>
			</div>

		</section>
	</xsl:template>

	<xsl:template match="Zone" mode='Tab'>

		<div class="tab-item-fashion">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text> tab-item-fashion active</xsl:text>
				</xsl:attribute>

			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab-category-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="head-menu">
				<div class="tab-panels">
					<ul class="tab-navigation">
						<xsl:apply-templates select="Zone" mode='Sub'></xsl:apply-templates>

					</ul>
				</div>
			</div>
			<div class="tab-wrapper trinity-item-swiper">
				<xsl:apply-templates select="Zone" mode='Product'></xsl:apply-templates>

			</div>

		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<li>

			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="position()=1">

				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>

			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:text>javascript:void(0)</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-type">
					<xsl:text>tab-category-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode='Product'>
		<div class="tab-item">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tab-item active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab-product-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>

			<div class="slide-product">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="Product"></xsl:apply-templates>

					</div>
				</div>
				<div class="nav-arrow-prev"><em class="fal fa-angle-left"></em></div>
				<div class="nav-arrow-next"><em class="fal fa-angle-right"></em></div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode='Sub'>
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:text>javascript:void(0)</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-type">
					<xsl:text>tab-product-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>

	</xsl:template>
	<xsl:template match="Product">
		<div class="swiper-slide">
			<div class="home-product-slide">


				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="card_img">
						<div class="img zoom-in"><img>
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
				<div class="content-product-silde">
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
</xsl:stylesheet>

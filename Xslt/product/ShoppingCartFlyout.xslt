<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="cart-header">
			<div class="cart-icon"></div>
			<div class="cart-number">
				<div class="item-quantity"><span class="icon"><em class='ri-shopping-cart-line'></em> </span><span
						class="number quantity-number">
						<xsl:value-of select="/ShoppingCart/TotalProducts" disable-output-escaping="yes"></xsl:value-of>
					</span></div>

			</div>
		</div>
		<div class="shopping-cart-wrapper">
			<div class="cart-body">
				<div class="head">
					<div class="cart-quantity">
						<div class="cart-icon-dark"></div>
						<div class="cart-number">
							<span class="item-quantity quantity-number">
								<xsl:value-of select="/ShoppingCart/TotalProducts" disable-output-escaping="yes">
								</xsl:value-of>
							</span>
						</div>
					</div>
					<div class="sum-price">
						<p>
							Tổng cộng: <span>
								<xsl:value-of select="/ShoppingCart/Total"></xsl:value-of>
							</span>
						</p>
					</div>
				</div>
				<xsl:if test="count(/ShoppingCart/CartItem)>0">
					<div class="body">
						<div class="scroll-wrapper">
							<xsl:apply-templates select="/ShoppingCart/CartItem"></xsl:apply-templates>
						</div>
					</div>
					<div class="btn-center">
						<a class="btn btn-primary">
							<xsl:attribute name="href">
						<xsl:text>/cart</xsl:text>
							</xsl:attribute>
							<span>Thanh toán </span>
							<em class="fas fa-chevron-right"></em>
						</a>
					</div>
				</xsl:if>
			</div>
		</div>
	
	</xsl:template>

	<xsl:template match="CartItem" mode="LastAddedItem">
		<xsl:if test="LastAddedItem='true'">
			<div class="productAddedToCartWindowImage">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
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
				<h3>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
				</h3>
			</div>
			<div class="productAddedToCartWindowDescription">
				<xsl:apply-templates select="Attributes"></xsl:apply-templates>
				<div class="briefContent">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<div>
						<strong class="price">
							<xsl:value-of select="Price"></xsl:value-of>
						</strong>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="CartItem">
		<div class="cart-item">
			<div class="image">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<img>
					<xsl:attribute name="src">
						<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
				</a>
			</div>
			<div class="caption">
				<div class="title">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<xsl:value-of select="Title"></xsl:value-of>
					</a>
					<!--<a href="#!" class="remove-product" onclick="AjaxCart.removefromcart(this);return false;"
					style="font-size: 13px; color:#333">
						<xsl:attribute name="data-itemguid">
							<xsl:value-of select="ItemGuid"></xsl:value-of>
						</xsl:attribute>
						<em class="mdi mdi-close"></em>
					</a>-->
				</div>
				<div class="bottom">
					<div class="price">
						<xsl:value-of select="Price"></xsl:value-of>
					</div>
					<div class="quantity">
						Số lượng: <span class="number">
							<xsl:value-of select="Quantity"></xsl:value-of>
						</span>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>

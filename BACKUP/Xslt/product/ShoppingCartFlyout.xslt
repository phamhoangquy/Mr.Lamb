<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="cart-icon"></div>
		<div class="cart-number">
			<div class="item-quantity"><span class="text">Giỏ hàng </span><span class="number">
					<xsl:text>(</xsl:text>
					<xsl:value-of select="/ShoppingCart/TotalProducts" disable-output-escaping="yes">
					</xsl:value-of>
				</span>)</div>

		</div>
		<div class="shopping-cart-wrapper">
			<div class="head">
				<div class="cart-quantity">
					<div class="cart-icon-dark"></div>
					<div class="cart-number">
						<span class="item-quantity">
							<xsl:text>0</xsl:text>
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
							<xsl:value-of select="/ShoppingCart/CheckoutUrl"></xsl:value-of>
						</xsl:attribute>
						<span>Thanh toán </span>
						<em class="fas fa-chevron-right"></em>
					</a>
				</div>
			</xsl:if>
		</div>
		<!--<a class="cart-toggle" href="#">
			<span class="lnr lnr-cart"></span>
			<small class="uk-badge">
				<xsl:text disable-output-escaping="yes">(</xsl:text>
				<span class="cart-amount">
					<xsl:value-of select="/ShoppingCart/TotalProducts" disable-output-escaping="yes">
					</xsl:value-of>
				</span>
				<xsl:text disable-output-escaping="yes">)</xsl:text>
			</small>
		</a>
		<div class="uk-dropdown" uk-dropdown="pos: bottom-right">
			<div class="shopping-cart">
				<div class="shopping-cart-header">
					<i class="lnr lnr-cart cart-icon"></i>
					<span class="badge cart-amount">
						<xsl:value-of select="/ShoppingCart/TotalProducts" disable-output-escaping="yes">
						</xsl:value-of>
					</span>
					<div class="shopping-cart-total">
						<span class="lighter-text">Total:</span>
						<span class="main-color-text">
							<xsl:value-of select="/ShoppingCart/Total"></xsl:value-of>
						</span>
					</div>
				</div>
				<xsl:if test="count(/ShoppingCart/CartItem)>0">
					<ul class="shopping-cart-items">
						<xsl:apply-templates select="/ShoppingCart/CartItem"></xsl:apply-templates>
					</ul>
				</xsl:if>

				<xsl:if test="count(/ShoppingCart/CartItem)=0">
				<p class="uk-text-center" style="color: #999;">No products in the cart.</p>
			</xsl:if>

				<a href="#" class="button">
					<xsl:attribute name="href">
						<xsl:value-of select="/ShoppingCart/CartPageUrl"></xsl:value-of>
					</xsl:attribute>
					Checkout
				</a>
			</div>
		</div>-->
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

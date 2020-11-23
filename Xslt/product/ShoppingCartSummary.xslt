<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ShoppingCart">
		<div class="checkout-form checkout-cart">
			<div class="title-wrap">
				<div class="text">Thông tin người đặt hàng</div>
			</div>
			<div class="wrapper-form admin-wrap">
				<div class="wrapper">
					<xsl:apply-templates select="CartItem"/> 
				</div>
				<div class="total">
					<div class="text">
						<p><strong>Tạm tính</strong></p>
						<p>
							<xsl:value-of select="SubTotal"/>
						</p>	
					</div>
					<div class="text">
						<p><strong>Phí vận chuyển</strong></p>
						<p>
							<xsl:value-of select="ShippingTotal"/>
						</p>
					</div>
					<div class="text">
						<p><strong>Giảm giá</strong></p>
						<p>
							<xsl:value-of select="DiscountTotal"/>
						</p>
					</div>
					<div class="text">
						<p><strong>Tổng cộng </strong></p>
						<p>
							<xsl:value-of select="Total"/>
						</p>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="CartItem">
		<div class="item">
			<div class="image-wrapper">
				<a href="#">
					<xsl:attribute name="title">
						<xsl:value-of select="Title"/>
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"/>
					</xsl:attribute>
					<img src="./img/product/1.png" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"/>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"/>
						</xsl:attribute>
					</img>
				</a> 
			</div>
			<div class="content">
				<div class="title">
					<a href="#">
						<xsl:attribute name="title">
							<xsl:value-of select="Title"/>
						</xsl:attribute>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"/>
						</xsl:attribute>
						<xsl:value-of select="Title"/>
					</a>
					<div class="price">
						<xsl:value-of select="ItemSubTotal"/>
					</div>
				</div>
				<div class="price-wrap">
					<div class="line"><span>Số lượng</span>
						<div class="quantity">
							<xsl:text>x</xsl:text>
							<xsl:value-of select="Quantity"/>
						</div>
					</div>
					<xsl:if test="DiscountAmount != ''">
						<div class="line">
							<span>Giảm giá</span>
							<div class="temp">
								<xsl:value-of select="DiscountAmount"/>
							</div>
						</div>
					</xsl:if>
				</div>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

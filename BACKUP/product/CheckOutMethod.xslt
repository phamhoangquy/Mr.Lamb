<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/CheckoutMethod">
		<div class="checkout-form">
			<div class="title-wrap">
				<div class="text">Phương thức thanh toán</div>
			</div>
			<div class="wrapper-form payment-method-form">
				<xsl:apply-templates select="Payment"/>
			</div>
		</div>
		<div class="checkout-form">
			<div class="title-wrap">
				<div class="text">Phương thức giao hàng</div>
			</div>
			<div class="wrapper-form shipping-method-form">
				<xsl:apply-templates select="Shipping"/>
			</div>
		</div>
		<div class="term-service-wrap">
			<div class="qcheckbox">
				<input id="payAgree" type="checkbox" name="PaymentAgree"/> 
				<label>Tôi  đã đọc và đồng ý với <a href="#">Các điều khoản</a></label>
			</div>
		</div>
		<div class="form-group">
			<div class="setting-control">
				<div class="btn-gap">
					<a class="btn btn-primary grey" href="/"> 
						<em class="mdi mdi-reply"></em>
						<span>Quay lại</span>
					</a> 
					<a class="btn btn-primary red" href="#">
						<xsl:attribute name="onclick">
							<xsl:text>AjaxCheckout.saveorder(true, '</xsl:text>
							<xsl:value-of select="NextPageUrl"/>
							<xsl:text>');return false;</xsl:text>
						</xsl:attribute> 
						<em class="fas fa-shopping-basket"></em>
						<span>Thanh toán</span>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
	
	<xsl:template match="Payment">
		<div class="qradio">
			<input type="radio" name="PaymentMethod">
				<xsl:attribute name="id">
					<xsl:value-of select="Id"/>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="Id"/>
				</xsl:attribute>
				<xsl:if test="position()=1">
				<xsl:attribute name="checked">
					<xsl:text>checked</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="Id"/>
				</xsl:attribute>
				</xsl:if>
			</input>
			<label> 
				<xsl:attribute name="for">
					<xsl:value-of select="Id"/>
				</xsl:attribute> 
				<xsl:value-of select="Description" disable-output-escaping="yes"/>
			</label>
		</div>
	</xsl:template>


	<xsl:template match="Shipping"> 
		<div class="qradio">
			<input type="radio" name="ShippingMethod" onchange="AjaxCheckout.getshippingtotal(this)">
				<xsl:if test="position()=1">
					<xsl:attribute name="checked">
						<xsl:text>checked</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="value">
					<xsl:value-of select="Id"/>
				</xsl:attribute>
				<xsl:attribute name="id">
					<xsl:value-of select="Id"/>
				</xsl:attribute> 
			</input>
			<label>
				<xsl:attribute name="for">
					<xsl:value-of select="Id"/>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"/>
			</label>
		</div>
	</xsl:template>
</xsl:stylesheet>

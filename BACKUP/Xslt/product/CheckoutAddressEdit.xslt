<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/CheckoutAddress">
		<div class="checkout-form">
			<div class="title-wrap">
				<div class="text">Thông tin người đặt hàng</div>
			</div>
			<div class="wrapper-form customer-info-form">
				<div class="form-group">
					<div class="setting-control">
						<input type="text" placeholder="Họ tên" name="Address_FirstName">
							<xsl:attribute name="value">
								<xsl:value-of select="FirstName"/>
							</xsl:attribute>
						</input> 
					</div>
				</div>
				<div class="form-group">
					<div class="setting-control">
						<input type="text" placeholder="Email" name="Address_Email">
							<xsl:attribute name="value">
								<xsl:value-of select="Email"/>
							</xsl:attribute>
						</input>  
					</div>
				</div>
				<div class="form-group">
					<div class="setting-control">
						<input type="text" placeholder="Số điện thoại" name="Address_Phone">
							<xsl:attribute name="value">
								<xsl:value-of select="Phone"/>
							</xsl:attribute>
						</input> 
					</div>
				</div>
			</div>
		</div>
		<div class="checkout-form">
			<div class="title-wrap">
				<div class="text">Thông tin người đặt hàng</div>
			</div>
			<div class="wrapper-form customer-info-form-2">
				<div class="radio-wrap">
					<div class="qradio">
						<input type="radio" name="delivery" checked="checked" id="delivery-isme" onchange="ChangeDiliveryForm(this,'checkout-isme','checkout-delivery-other');return false;"/>
						<label for="delivery-isme">Người nhận là người đặt</label>
					</div> 
					<div class="qradio"> 
						<input type="radio" name="delivery"  id="delivery-other"  onchange="ChangeDiliveryForm(this,'checkout-delivery-other','checkout-isme');return false;"/>
						<label for="delivery-other">Người nhận khác người đặt</label>
					</div>
				</div>  	
				<div class="checkout-receiver" data-for="checkout-delivery-other" style="display:none">
					<div class="wrapper-form">
						<div class="form-group"> 
							<div class="setting-control">
								<input type="text" placeholder="Họ tên" name="ShippingAddress_FirstName" >
									<xsl:attribute name="value">
										<xsl:value-of select="ShippingFirstName"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
						<div class="form-group">
							<div class="setting-control">
								<input type="text" placeholder="Số điện thoại" name="ShippingAddress_Phone" >
									<xsl:attribute name="value">
										<xsl:value-of select="ShippingFirstName"/>
									</xsl:attribute> 
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group"  data-for="checkout-delivery-other" style="display:none">
					<div class="setting-control">
						<select name="ShippingAddress_Province" onchange="AjaxCheckout.getdistrictsbyprovinceguid(this, 'ShippingAddress_District')">
							<option>Chọn Tỉnh/thành phố</option>
							<xsl:apply-templates select="Provinces"/>
						</select>
					</div>
				</div>
				<div class="form-group"  data-for="checkout-delivery-other" style="display:none">
					<div class="setting-control">
						<select name="ShippingAddress_District">
							<option> Chọn quận huyện</option>
						</select>
					</div>
				</div>
				<div class="form-group"  data-for="checkout-delivery-other" style="display:none">
					<div class="setting-control">
						<input type="text" name="ShippingAddress_Address" placeholder="Địa chỉ">
							<xsl:attribute name="value">
								<xsl:value-of select="ShippingAddress"/>
							</xsl:attribute>
						</input>
					</div> 
				</div>
				<div class="form-group"  data-for="checkout-isme">
					<div class="setting-control">
						<select name="Address_Province" onchange="AjaxCheckout.getdistrictsbyprovinceguid(this, 'Address_District')">
							<option>Chọn Tỉnh/thành phố</option>
							<xsl:apply-templates select="Provinces"/>
						</select>
					</div>
				</div>
				<div class="form-group"  data-for="checkout-isme">
					<div class="setting-control">
						<select name="Address_District">
							<option> Chọn quận huyện</option>
						</select>
					</div>
				</div>
				<div class="form-group"  data-for="checkout-isme">
					<div class="setting-control">
						<input type="text" name="Address_Address" placeholder="Địa chỉ">
							<xsl:attribute name="value">
								<xsl:value-of select="Address"/>
							</xsl:attribute> 
						</input>
					</div> 
				</div> 
				<div class="form-group">
					<div class="setting-control">
						<textarea  name="OrderNote" cols="30" rows="2" placeholder="Ghi chú đặc biệt cho đơn hàng"></textarea>
					</div>
				</div>
			</div>
		</div> 
	</xsl:template>
	<xsl:template match="Provinces">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Guid"/>
			</xsl:attribute> 
			<xsl:value-of select="Title"/>
		</option>
	</xsl:template>
	<xsl:template match="Provinces" mode="Shipping">
		<option>
			<xsl:if test="ShippingIsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Guid"/>
			</xsl:attribute>
			<xsl:value-of select="Title"/>
		</option>
	</xsl:template>
</xsl:stylesheet>

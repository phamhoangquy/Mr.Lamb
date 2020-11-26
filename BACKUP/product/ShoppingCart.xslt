<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ShoppingCart">

		<div class="admin-title">
			<div class="text">Giỏ hàng</div>
		</div>
		<div class="wrapper">
			<xsl:choose>
				<xsl:when test="count(/ShoppingCart/CartItem)=0">
					<div class="empty-cart-wrapper">
						<h2 class="text-title">Chưa só sản phẩn nào trong giỏ hàng của bạn</h2>
						<div class="btn-center">
							<a class="btn btn-primary red" href="/">
								
								<span>Mua thêm</span>
							</a>
						</div>
					</div>
				</xsl:when>
				<xsl:otherwise>
					<div class="cart-table-wrapper">
						<table class="carttable" cellspacing="0" cellpadding="0">
							<thead>
								<tr>
									<th>Sản phẩm </th>
									<th>Số lượng</th>
									<th>Giảm giá </th>
									<th>Thành tiền</th>
								</tr>
							</thead>
							<tbody>
								<xsl:apply-templates select="CartItem" />
							</tbody>
						</table>
						<div class="total-wrapper">
							<table class="total-table">
								<tr>
									<td>Tạm tính</td>
									<td>
										<xsl:value-of select="SubTotal" />
									</td>
								</tr>
								<tr>
									<td>Giảm giá</td>
									<td>
										<xsl:value-of select="DiscountTotal" />
									</td>
								</tr>
								<tr>
									<td>Tổng cộng </td>
									<td>
										<xsl:value-of select="Total" />
									</td>
								</tr>
							</table>
							<div class="btn-right">
								<a class="btn btn-primary red" href="#">
									<xsl:attribute name="onclick">
										<xsl:text>setLocation('</xsl:text>
										<xsl:value-of select="CheckoutUrl" />
										<xsl:text>');return false;</xsl:text>
									</xsl:attribute>
									<em class="fas fa-shopping-basket"></em>
									<span>tiến hành đặt hàng</span>
								</a>
							</div>
						</div>
					</div>
				</xsl:otherwise>
			</xsl:choose>

		</div>

	</xsl:template>

	<xsl:template match="CartItem">
		<tr>
			<td>
				<div class="product-item">
					<div class="image">
						<a href="#">
							<xsl:attribute name="title">
								<xsl:value-of select="Title" />
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="Url" />
							</xsl:attribute>
							<img src="./img/product/1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ThumbnailUrl" />
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" />
							</xsl:attribute>
							</img>
						</a>
					</div>
					<div class="caption">
						<div class="title">
							<a href="#">
								<xsl:attribute name="title">
									<xsl:value-of select="Title" />
								</xsl:attribute>
								<xsl:attribute name="href">
									<xsl:value-of select="Url" />
								</xsl:attribute>
								<xsl:value-of select="Title" />
							</a>
						</div>
						<a class="remove-item" onclick="AjaxCart.removefromcart(this);return false;">
							<xsl:attribute name="data-itemguid">
								<xsl:value-of select="ItemGuid" />
							</xsl:attribute>
							<em class="ri-delete-bin-line"></em>
							<span>Xóa</span>
						</a>
					</div>
				</div>
			</td>
			<td>

				<div class="quantity-wrapper">
					<div class="item-quantity">
						<div class="input-group">
							<div class="input-group-btn">
								<div class="qty-minus btn-number">
									<em class="ri-subtract-line"></em>
								</div>
							</div>
							<input class="product-details-quantity form-control input-number" type="text" value="1">
							<xsl:attribute name="name">
								<xsl:text>itemquantity</xsl:text>
								<xsl:value-of select="ItemGuid" />
							</xsl:attribute>
							<xsl:attribute name="value">
								<xsl:value-of select="Quantity" />
							</xsl:attribute>
							</input>
							<div class="input-group-btn">
								<div class="qty-plus btn-number">
									<em class="ri-add-line"></em>
								</div>
							</div>
						</div>
					</div>
				</div>

			</td>
			<td>
				<div class="discount">
					<xsl:if test="DiscountAmount != ''">
						<xsl:value-of select="DiscountAmount" />
					</xsl:if>
					<xsl:if test="DiscountAmount = ''">
						<xsl:text>0 đ</xsl:text>
					</xsl:if>
				</div>
			</td>
			<td>
				<div class="total">
					<xsl:value-of select="ItemTotal" />
				</div>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>

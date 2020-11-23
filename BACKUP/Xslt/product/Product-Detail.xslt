<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/ProductDetail">
		<section class="block_product-detail">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-7 col-lg-7">
						<div class="swiper-product-wrapper">
							<div class="swiper-product-thumbs">
								<div class="swiper-container">
									<div class="swiper-wrapper">

										<xsl:apply-templates select="ProductImages"></xsl:apply-templates>
									</div>
								</div>
							</div>
							<div class="swiper-product-main" id="gallery_01">
								<div class="swiper-container">
									<div class="swiper-wrapper">

										<xsl:apply-templates select="ProductImages" mode='Main'></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-5 col-lg-5">
						<div class="block_description">
							<div class="name_product">
								<h2>
									<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
									<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h2>
							</div>
							<div class="block_price">
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
											<xsl:value-of disable-output-escaping="yes" select="OldPrice">
											</xsl:value-of>
										</p>
									</div>
								</xsl:if>

								<div class="link"><a class="material-icons" href="">link</a></div>
							</div>
							<div class="description">
								<div class="title_description">
									<p>Tình trạng</p>
								</div>
								<div class="content_status">
									<p>Còn hàng</p>
								</div>
							</div>
							<div class="description">
								<div class="title_description">
									<p>Mã sản phẩm</p>
								</div>
								<div class="content_description">
									<p>10F19SWE005</p>
								</div>
							</div>
							<div class="description">
								<div class="title_description">
									<p>Chất liệu</p>
								</div>
								<div class="content_description">
									<p>52% cotton, 48% polyester.</p>
								</div>
							</div>
							<div class="description">
								<div class="title_description">
									<p>Đặc tính</p>
								</div>
								<div class="content_description">
									<p>Cảm giác mềm mại, thoải mái, có độ thấm hút tốt, chống nhăn cao và tránh bám bụi.
									</p>
								</div>
							</div>
							<div class="description">
								<div class="title_description center">
									<p>Kích thước</p>
								</div>
								<div class="content_size">
									<ul>
										<li>
											<div class="size active">S</div>
										</li>
										<li>
											<div class="size">XXL</div>
										</li>
										<li>
											<div class="size">XXL</div>
										</li>
										<li>
											<div class="size">XXL</div>
										</li>
										<li>
											<div class="size">XXL</div>
										</li>
										<li>
											<div class="size">XXL</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="description">
								<div class="title_description">
									<p>Màu sắc</p>
								</div>
								<div class="content_color">
									<ul>
										<li class="active">
											<div class="color"></div>
										</li>
										<li>
											<div class="color"></div>
										</li>
										<li>
											<div class="color"></div>
										</li>
									</ul>
								</div>
							</div>
							<div class="description">
								<div class="title_description center">
									<p>Số lượng</p>
									<div class="item-quantity">
										<div class="input-group">
											<div class="input-group-btn">
												<div class="qty-minus btn-number"><em class="ri-subtract-line"></em>
												</div>
											</div>
											<input class="product-details-quantity form-control input-number"
												type="text" value="1"/>
											<div class="input-group-btn">
												<div class="qty-plus btn-number"><em class="ri-add-line"></em></div>
											</div>
										</div>
									</div>
								</div>
								<div class="content_number">
									<xsl:choose>
										<xsl:when test="OutStock='true'">
											<a class="btn out-stock" onclick="return false;">
												<span>Hết hàng</span>
											</a>
										</xsl:when>
										<xsl:otherwise>
											<a class="add-to-card"
												onclick="AjaxCart.addproducttocart_details(this); return false;">
												<xsl:attribute name="data-productid">
													<xsl:value-of select="ProductId"></xsl:value-of>
												</xsl:attribute>
												<span>Thêm vào giỏ hàng</span>
											</a>
										</xsl:otherwise>
									</xsl:choose>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="product-description">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="tab-panels">
							<ul class="tab-navigation">
								<li> <a href="javascript:void(0)" data-type="product-tab-1">MÔ TẢ SẢN PHẨM</a></li>
								<li><a href="javascript:void(0)" data-type="product-tab-2">HƯỚNG DẪN SỬ DỤNG</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-wrapper">
					<div class="tab-item active" id="product-tab-1">
						<div class="product-detail-wrapper">
							<div class="description-wrapper">
								<article>
									<div class="fullcontent">
										<div class="row">
											<div class="col-lg-12">
												<div class="description-detail">
													<div class="content">
														<xsl:value-of disable-output-escaping="yes"
															select="FullContent"></xsl:value-of>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="btn-wrapper-center">
											<div class="btn-view-more"><a href="">Xem Thêm</a><em
													class="far fa-chevron-double-down"></em></div>
										</div>
									</div>
								</article>
							</div>
						</div>
					</div>
					<div class="tab-item " id="product-tab-2"></div>
				</div>
			</div>
		</section>
		<section class="block_product-detail-3">
			<div class="container">
				<div class="block-title">
					<div class="head-title">
						<h2>sản phẩm liên quan</h2>
					</div>
				</div>
				<div class="product-related-swiper-wrapper">
					<div class="nav-arrow-prev"><em class="fal fa-angle-left"></em></div>
					<div class="nav-arrow-next"><em class="fal fa-angle-right"></em></div>
					<div class="swiper-container">
						<div class="swiper-wrapper">

							<xsl:apply-templates select="ProductOther"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="ProductOther">
		<div class="swiper-slide">
			<div class="product-detail-slide"><a>


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
								<xsl:if test="floor(ShowOption div 4) mod 2 = 1">
									<div class="discount"><img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
									</div>
								</xsl:if>
								<xsl:if test="floor(ShowOption div 2) mod 2 = 1">
									<div class="sale"><img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
									</div>
								</xsl:if>
								<xsl:if test="floor(ShowOption div 1) mod 2 = 1">
									<div class="hot"><img src="/Data/Sites/1/media/img/product/sale.png" alt="" /></div>
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
	<xsl:template match="ProductImages">
		<div class="swiper-slide">
			<div class="wrapper">
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
	</xsl:template>
	<xsl:template match="ProductImages" mode='Main'>
		<div class="swiper-slide">
			<div class="wrapper">
				<img class="zoom-img">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="data-zoom-image">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>

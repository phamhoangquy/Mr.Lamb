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
										<div class="swiper-slide">
											<div class="wrapper"><img src="./img/banner/banner-1.png" alt=""></div>
										</div>
										<div class="swiper-slide">
											<div class="wrapper"><img src="./img/home/product-1/ao-2.png" alt=""></div>
										</div>
									</div>
								</div>
							</div>
							<div class="swiper-product-main" id="gallery_01">
								<div class="swiper-container">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<div class="wrapper"><img class="zoom-img"
													src="./img/home/product-1/ao-1.png"
													data-zoom-image="./img/home/product-1/ao-1.png" alt=""></div>
										</div>
										<div class="swiper-slide">
											<div class="wrapper"><img class="zoom-img"
													src="./img/home/product-1/ao-2.png"
													data-zoom-image="./img/home/product-1/ao-1.png" alt=""></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-5 col-lg-5">
						<div class="block_description">
							<div class="name_product">
								<h2>Áo Thun Nam Tay Dài Regular</h2>
							</div>
							<div class="block_price">
								<div class="price">
									<p>400.000 đ</p>
								</div>
								<div class="discount">
									<p>500.000 đ</p>
								</div>
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
								</div>
								<div class="content_number"><a class="add-to-card" href="#">Thêm giỏ hàng</a></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

</xsl:stylesheet>

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
                <h2 class="product-name">
                  <xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>

                </h2>
                <p class="product-edit">
                  <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </p>
              </div>
              <div class="block_price">
                <xsl:if test="Price !=''">
                  <div class="price">
                    <p class="product-price">
                      <xsl:value-of disable-output-escaping="yes" select="Price"></xsl:value-of>
                    </p>
                  </div>
                </xsl:if>
                <xsl:if test="OldPrice !=''">

                  <div class="discount">
                    <p class="product-oldprice">
                      <xsl:value-of disable-output-escaping="yes" select="OldPrice">
                      </xsl:value-of>
                    </p>
                  </div>
                </xsl:if>

                <div class="link">
                  <a class="material-icons" href="">link</a>
                </div>
              </div>
              <div class="description">
                <div class="title_description">
                  <p>Tình trạng</p>
                </div>
                <div class="content_status">
                  <xsl:choose>
                    <xsl:when test="OutStock='true'">
                      <p class="product-status">
                        Hết hàng
                      </p>
                    </xsl:when>
                    <xsl:otherwise>
                      <p class="product-status">
                        Còn hàng
                      </p>
                    </xsl:otherwise>
                  </xsl:choose>
                </div>
              </div>
              <div class="description">
                <div class="title_description">
                  <p>Mã sản phẩm</p>
                </div>
                <div class="content_description">
                  <p class="code_product">
                    <xsl:value-of select="Code"></xsl:value-of>
                  </p>
                </div>
              </div>
              <div class="description">
                <div class="title_description">
                  <p>Chất liệu</p>
                </div>
                <div class="content_description">
                  <p>
                    <xsl:value-of select="SubTitle"></xsl:value-of>
                  </p>
                </div>
              </div>
              <div class="description">
                <div class="title_description">
                  <p>Đặc tính</p>
                </div>
                <div class="content_description">
                  <p class="product-briefContent">
                    <xsl:value-of select="BriefContent"></xsl:value-of>
                  </p>
                </div>
              </div>
              <xsl:if test="count(ProductProperties[EnableShoppingCart='True'])>0">
                <div class="product-attributes">
                  <xsl:apply-templates select="ProductProperties[EnableShoppingCart='True']">
                  </xsl:apply-templates>
                </div>
              </xsl:if>
              <div class="description btn-wrap-gap">
                <div class="title_description center ">
                  <p>Số lượng</p>
                  <div class="item-quantity">
                    <div class="input-group">
                      <div class="input-group-btn">
                        <div class="qty-minus btn-number">
                          <em class="ri-subtract-line"></em>
                        </div>
                      </div>
                      <input class="product-details-quantity form-control input-number"
												type="text" value="1"/>
                      <div class="input-group-btn">
                        <div class="qty-plus btn-number">
                          <em class="ri-add-line"></em>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="content_number">
                  <xsl:choose>
                    <xsl:when test="OutStock='true'">
                      <a class="add-to-card out-stock" onclick="return false;">
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
                <li>
                  <a href="javascript:void(0)" data-type="product-tab-1">MÔ TẢ SẢN PHẨM</a>
                </li>
                <li>
                  <a href="javascript:void(0)" data-type="product-tab-2">HƯỚNG DẪN SỬ DỤNG</a>
                </li>
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
                      <div class="btn-view-more">
                        <a href="">Xem Thêm</a>
                        <em
													class="far fa-chevron-double-down"></em>
                      </div>
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
          <div class="nav-arrow-prev">
            <em class="fal fa-angle-left"></em>
          </div>
          <div class="nav-arrow-next">
            <em class="fal fa-angle-right"></em>
          </div>
          <div class="swiper-container">
            <div class="swiper-wrapper">

              <xsl:apply-templates select="ProductOther"></xsl:apply-templates>
            </div>
          </div>
        </div>
      </div>
    </section>
    <input type="hidden" id="hdProductId">
      <xsl:attribute name="value">
        <xsl:value-of select="ProductId"></xsl:value-of>
      </xsl:attribute>
    </input>
  </xsl:template>

  <xsl:template match="ProductOther">
    <div class="swiper-slide">
      <div class="product-detail-slide">
        <a>


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
                  <div class="discount">
                    <img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
                  </div>
                </xsl:if>
                <xsl:if test="floor(ShowOption div 2) mod 2 = 1">
                  <div class="sale">
                    <img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
                  </div>
                </xsl:if>
                <xsl:if test="floor(ShowOption div 1) mod 2 = 1">
                  <div class="hot">
                    <img src="/Data/Sites/1/media/img/product/sale.png" alt="" />
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

  <xsl:template match="ProductProperties">
    <div class="description">
      <xsl:choose>
        <xsl:when test="FieldType=1">
          <div class="title_description">
            <p>Màu sắc</p>
          </div>
          <div class="content_color product-options">
            <ul>
              <xsl:apply-templates select="Options" mode="Color"></xsl:apply-templates>
            </ul>
            <input type="hidden" class="product-option-input">
              <xsl:attribute name="name">
                <xsl:text>product_option_</xsl:text>
                <xsl:value-of select="FieldId"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="value">
                <xsl:value-of select="ActiveOptionId"></xsl:value-of>
              </xsl:attribute>
            </input>
          </div>
        </xsl:when>
        <xsl:when test="Title='Kích thước'">
          <div class="title_description center">
            <p>Kích thước</p>
          </div>
          <div class="content_size product-options">
            <ul>
              <xsl:apply-templates select="Options" mode="Size"></xsl:apply-templates>
            </ul>
            <input type="hidden" class="product-option-input">
              <xsl:attribute name="name">
                <xsl:text>product_option_</xsl:text>
                <xsl:value-of select="FieldId"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="value">
                <xsl:value-of select="ActiveOptionId"></xsl:value-of>
              </xsl:attribute>
            </input>
          </div>
        </xsl:when>
        <xsl:otherwise>
        </xsl:otherwise>
      </xsl:choose>
    </div>
  </xsl:template>

  <xsl:template match="Options" mode="Color">
    <li style="padding:0px" class="li-option">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>li-option active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <a class="product-option product-option-color" onclick="AjaxCart.selectproductoption(this);return false;">
        <xsl:attribute name="href">#</xsl:attribute>
        <xsl:attribute name="data-name">
          <xsl:value-of select="Title"></xsl:value-of>
        </xsl:attribute>
        <xsl:attribute name="data-id">
          <xsl:value-of select="OptionId"></xsl:value-of>
        </xsl:attribute>
        <xsl:if test="IsActive='true'">
          <xsl:attribute name="class">
            <xsl:text>product-option product-option-color active</xsl:text>
          </xsl:attribute>
        </xsl:if>
        <xsl:attribute name="style">
          <xsl:text>background:</xsl:text>
          <xsl:value-of select="Color"></xsl:value-of>
          <xsl:text>; margin: 0px; display: block; width: 100%; height: 100%;:</xsl:text>
        </xsl:attribute>
      </a>
    </li>
  </xsl:template>

  <xsl:template match="Options" mode="Size">
    <li style="padding:0px" class="li-option">
      <xsl:if test="IsActive='true'">
        <xsl:attribute name="class">
          <xsl:text>li-option active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <div class="size">
        <a class="product-option product-option-size" onclick="AjaxCart.selectproductoption(this);return false;">
          <xsl:attribute name="href">#</xsl:attribute>
          <xsl:attribute name="data-name">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="data-id">
            <xsl:value-of select="OptionId"></xsl:value-of>
          </xsl:attribute>
          <xsl:if test="IsActive='true'">
            <xsl:attribute name="class">
              <xsl:text>product-option product-option-size active</xsl:text>
            </xsl:attribute>
          </xsl:if>
          <xsl:attribute name="style">
            <xsl:text>; margin: 0px; display: block; width: 100%; height: 100%;:</xsl:text>
          </xsl:attribute>
          <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
        </a>
      </div>
    </li>
  </xsl:template>

</xsl:stylesheet>

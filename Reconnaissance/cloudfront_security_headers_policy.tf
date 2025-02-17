resource "aws_cloudfront_response_headers_policy" "security_headers_csp_policy" {
  name = "All-security-headers-configured"
  security_headers_config {
    content_security_policy {
      content_security_policy = "script-src 'self' 'wasm-unsafe-eval' 'unsafe-eval' blob: *.DOMAIN_NAME.com https://maps.googleapis.com https://cdnjs.cloudflare.com;"
      override = true
    }
    frame_options {
      frame_option = "SAMEORIGIN"
      override = true
    }
    strict_transport_security {
      override = true
      access_control_max_age_sec = 31536000
      include_subdomains = true
      preload = true
    }
    content_type_options {
      override = true
    }
    referrer_policy {
      referrer_policy = "no-referrer"
      override = true
    }
    xss_protection {
      mode_block = true
      protection = true
      override = true
    }    
  }
}
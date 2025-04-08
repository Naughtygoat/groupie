resource "google_dns_managed_zone" "capricorn-groupie" {
  name        = "capricorn-groupie"
  dns_name    = "groupie.capricorn.org."
  description = "DNS zone for the Groupie example project"
}

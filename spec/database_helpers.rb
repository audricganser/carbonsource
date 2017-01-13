def setup_all_databases
  setup_politicians
  setup_organisations
  setup_searches
  setup_sources
  setup_info_contacts
  setup_carbon_emissions
  setup_contributions
end

def setup_politicians
  @politician = Politician.new
  @politician.name_first = "Tim"
  @politician.name_last = "Withers"
  @politician.party = "republican"
  @politician.position = "senator"
  @politician.info_contact_id = 0
  @politician.save
end

def setup_searches
  @search = Search.new
  @search.query = "tim"
  @search.date = "2017-01-12T14:49:35+00:00"
  @search.save
end

def setup_sources
  @source_one = Source.new
  @source_one.name = "example_source_one"
  @source_one.description = ""
end

def setup_organisations
  @org = Organisation.new
  @org.type = "company"
  @org.name = "banana"
  @org.info_contact_id = 1
end

def setup_info_contacts
  @info = InfoContact.new
  @info.email = "tim@usa.gov"
  @info.address = "Floor 3, 3 Washington Avenue"
  @info.phone = "12345-678-910"
  @info.website = "http://example.org"
  @info.postal_code = "10001"
  @info.city = "New York City"
  @info.region1 = "1"
  @info.region2 = "New York City"
  @info.region3 = "New York County"
  @info.state = "New York"
  @info.country = "United States of America"

  @info2 = InfoContact.new
  @info2.email = "contact@company.org"
  @info2.address = "123 Somewhere Street"
  @info2.phone = "12345-678-910"
  @info2.website = "http://example.org"
  @info.postal_code = "10001"
  @info.city = "New York City"
  @info.region1 = "1"
  @info.region2 = "New York City"
  @info.region3 = "New York County"
  @info.state = "New York"
  @info.country = "United States of America"
end

def setup_carbon_emissions
  @carb = CarbonEmission.new
  @carb.measurement_date = "2017-01-12T14:49:35+00:00"
  @carb.amount = 12345678910
  @carb.url = "http://example.com"
end

def setup_contributions
  @contr = Contribution.new
  @contr.amount = 123456
  @contr.created_at = "2017-01-12T14:49:35+00:00"
end

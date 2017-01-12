def setup_all_databases
  setup_politicians
  setup_organisations
  setup_searches
  setup_sources
  setup_info_contacts
  setup_carbon_emissions
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
  @org.type = "inc"
  @org.name = "banana"
  @org.info_contact_id = 1
end

def setup_carbon_emissions
end

def setup_info_contacts
end


require "rest-client"
require 'json'

headers = { Authorization: "Bearer 4358bc9f8ef4b32721646390d51614b9" }
response = RestClient.get(
  "https://api-staging.pledgeling.com/v1/organizations/",
  headers
)
# array of objects convert to charity
hash = JSON.parse(response)


x = hash["results"].map do |org|
  # create version of the charities
  Charity.create({
      name: org['name'],
      mission: org['mission'],
      city: org['city'],
      country: org['country'],
      website_url: org['website_url'],
      logo_url: org['logo_url']
    })
end

# byebug

# puts "woohooo"

 # migrate before the seeding
 # change tables and re-seed database
 # hide the key

#
# Charity1 = Charity.create(name: 'CureDuchenne', state:'Connecticut', category: 'Health', img_url: "Cure_Duchenne.png", description: 'CureDuchenne breaks the traditional charitable mold and balances passion with business acumen. Our innovative venture philanthropy model funds groundbreaking research, early diagnosis and treatment access. With pioneering education and support programs, our organization drives real change for those with Duchenne muscular dystrophy and their loved ones.', website_url:"https://www.cureduchenne.org/")
#
#
# Charity2 = Charity.create(name: 'Care', state:'New York', category: 'Education', img_url: 'care.png', description: "In 2012 alone, CARE reached more than 2.3 million students in 48 countries.
#
# We work alongside communities, governments and partner organizations at many levels to address all aspects of basic education.
#
# Drawing strength from our global reach, decades of experience, extensive education portfolio and partnerships, we develop innovative learning solutions and provide educators with the knowledge and skills necessary to fulfill everyone’s need to learn.
#
# We train teachers and other school personnel to improve the quality of education while linking education programs to interventions in health, nutrition and livelihoods to better address the reasons children don't attend school. We also help communities assess and overcome their unique barriers to learning.", website_url: "https://www.care.org/work/education")
#
#
# Charity3 = Charity.create(name: 'American Red Cross',  state:'Washington', category: 'Organization', img_url: 'American_Red_Cross.png', description: "The American Red Cross prevents and alleviates human suffering in the face of emergencies by mobilizing the power of volunteers and the generosity of donors." , website_url: "http://www.redcross.org/")
#
#
# Charity4 = Charity.create(name: 'Save the Children', state:'Connecticut', category: 'Protection', img_url: 'SavetheChildren-logo.png', description: 'Save the Children believes every child deserves a future. In the U.S. and around the world, we give children a healthy start in life, the opportunity to learn and protection from harm. We do whatever it takes for children – every day and in times of crisis – transforming their lives and the future we share.',  "website_url": "https://www.savethechildren.org/")
#
#
# Charity5 = Charity.create(name: 'American Cancer Society', state: 'Georgia', category: 'Health', img_url: 'American_Cancer.png', description: "We know a cancer diagnosis can be scary – and overwhelming. Whether you need emotional support, the latest cancer information, a ride to chemo, or a place to stay when treatment is far away, we're here to help – 24 hours a day, 7 days a week.",  website_url: "https://www.cancer.org/")
#
#
#
#
#
# # ==============================================================================================================================================================================================================================
#
# # user1 = User.create(username: 'tess', password:'123' )
# # user2 = User.create(username: 'lorena', password:'123' )
#
#
# # ==============================================================================================================================================================================================================================

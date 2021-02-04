class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

# Generate a list of strings with the name and size (eg. "Alpha - 30")
def all_companies(companies)
    companies.map do |name_size|
        "#{name_size.name} - #{name_size}"
    end
end
# Combine all the sizes with reduce
def get_all_sizes(companies)
    companies.reduce(0) do |sum, current_size|
        sum + current_size.size
    end
end
#p get_all_sizes(companies)

# Filter the list to show only companies over 100
def companies_over_100(companies)
    over_100 = companies.filter do |bigger|
        bigger.size > 100 
    end
end
#pp all_companies(companies_over_100(companies))
# Find the company named "Beta"
def find_beta(companies)
    companies.find do |find_it|
        find_it.include?("Beta")
    end
end
# Find the largest company
def largest_company(companies)
    companies.max {|size_one, size_two| size_one.size <=> size_two.size}
end
#p largest_company(companies)
# Sort the companies from largest to smallest
def l_to_s(companies)
    companies.sort {|size_one, size_two| size_two.size <=> size_one.size}
end
p l_to_s(companies)
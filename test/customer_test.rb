require 'test/unit'
require_relative '../customer'

class CustomerTest < Test::Unit::TestCase
    def self.startup
        @@customer = Customer.new("John", "Smith")
        @@customer2 = Customer.new("Jane", "Doe")
    end

    def test_new_instance
        assert_not_nil(@@customer)
    end
    def test_new_no_params
        assert_raise(ArgumentError) {
            customer = Customer.new
        }
    end
    def test_first_name
        assert_equal("John", @@customer.first_name)
        assert_equal("Jane", @@customer2.first_name)
    end
    def test_full_name
        assert_equal("John Smith", @@customer.full_name)
    end
end

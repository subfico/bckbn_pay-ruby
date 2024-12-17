=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'date'
require 'time'

module BckbnPay
  class CardProfile
    attr_accessor :avs_check

    attr_accessor :avs_check_message

    attr_accessor :brand

    attr_accessor :cvc_check

    attr_accessor :cvc_check_message

    attr_accessor :exp_month

    attr_accessor :exp_year

    attr_accessor :funding

    attr_accessor :first6

    attr_accessor :last4

    attr_accessor :three_d_secure_supported

    attr_accessor :token

    attr_accessor :state

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'avs_check' => :'avs_check',
        :'avs_check_message' => :'avs_check_message',
        :'brand' => :'brand',
        :'cvc_check' => :'cvc_check',
        :'cvc_check_message' => :'cvc_check_message',
        :'exp_month' => :'exp_month',
        :'exp_year' => :'exp_year',
        :'funding' => :'funding',
        :'first6' => :'first6',
        :'last4' => :'last4',
        :'three_d_secure_supported' => :'three_d_secure_supported',
        :'token' => :'token',
        :'state' => :'state'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'avs_check' => :'String',
        :'avs_check_message' => :'String',
        :'brand' => :'String',
        :'cvc_check' => :'String',
        :'cvc_check_message' => :'String',
        :'exp_month' => :'Integer',
        :'exp_year' => :'Integer',
        :'funding' => :'String',
        :'first6' => :'String',
        :'last4' => :'String',
        :'three_d_secure_supported' => :'Boolean',
        :'token' => :'String',
        :'state' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'avs_check_message',
        :'cvc_check_message',
        :'funding',
        :'three_d_secure_supported',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `BckbnPay::CardProfile` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `BckbnPay::CardProfile`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'avs_check')
        self.avs_check = attributes[:'avs_check']
      end

      if attributes.key?(:'avs_check_message')
        self.avs_check_message = attributes[:'avs_check_message']
      end

      if attributes.key?(:'brand')
        self.brand = attributes[:'brand']
      end

      if attributes.key?(:'cvc_check')
        self.cvc_check = attributes[:'cvc_check']
      end

      if attributes.key?(:'cvc_check_message')
        self.cvc_check_message = attributes[:'cvc_check_message']
      end

      if attributes.key?(:'exp_month')
        self.exp_month = attributes[:'exp_month']
      end

      if attributes.key?(:'exp_year')
        self.exp_year = attributes[:'exp_year']
      end

      if attributes.key?(:'funding')
        self.funding = attributes[:'funding']
      end

      if attributes.key?(:'first6')
        self.first6 = attributes[:'first6']
      end

      if attributes.key?(:'last4')
        self.last4 = attributes[:'last4']
      end

      if attributes.key?(:'three_d_secure_supported')
        self.three_d_secure_supported = attributes[:'three_d_secure_supported']
      end

      if attributes.key?(:'token')
        self.token = attributes[:'token']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          avs_check == o.avs_check &&
          avs_check_message == o.avs_check_message &&
          brand == o.brand &&
          cvc_check == o.cvc_check &&
          cvc_check_message == o.cvc_check_message &&
          exp_month == o.exp_month &&
          exp_year == o.exp_year &&
          funding == o.funding &&
          first6 == o.first6 &&
          last4 == o.last4 &&
          three_d_secure_supported == o.three_d_secure_supported &&
          token == o.token &&
          state == o.state
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [avs_check, avs_check_message, brand, cvc_check, cvc_check_message, exp_month, exp_year, funding, first6, last4, three_d_secure_supported, token, state].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = BckbnPay.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end

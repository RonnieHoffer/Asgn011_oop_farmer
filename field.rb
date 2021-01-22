class Field

    @@fields =[]
    @@year_harvest = 0
    @@total_harvest = 0

    @@id = 1


    def initialize(type, area)
        @field_id = @@id
        @field_type = type # "1" for corn, "2" for wheat
        @field_area = area #field area in hectares
        @field_yield_to_date = 0
        @@id += 1
    end


    attr_reader :field_id, :field_type, :field_area
    attr_accessor :field_yield_to_date


    def self.purchase(type, area)
        new_field = Field.new(type, area)
        @@fields << new_field
        return new_field
    end


    def self.year_harvest
        @@year_harvest = 0
        @@fields.each do |field|
            case field.field_type
            when 1 
                @@year_harvest += (20 * field.field_area)
                field.field_yield_to_date += (20 * field.field_area)
            when 2
                @@year_harvest += (30 * field.field_area)
                field.field_yield_to_date += (30 * field.field_area)
            end
        end
        @@total_harvest += @@year_harvest
        return @@year_harvest
    end


    def self.last_years_harvest
        return @@year_harvest
    end
    

    def self.total_harvest
        return @@total_harvest
    end


    def self.display_all_fields
        @@fields.each do |field|
            p field
        end
    end


    def self.field_status(id)
        @@fields.each do |field|
            if field.field_id == id
                return field
            end
        end
    end

end
require 'json'

class Course

	attr_accessor :semester, :semester_year, :course_number, :must_learn_class, :required_unrequired, :course_name, :teacher, :classification, :credit, :hours, :language, :time_classroom, :must_learn_limit, :other_limit, :all_limit, :must_learn_chosen, :other_chosen, :all_chosen, :authorized_students, :wait_for_authorized
	def initialize(h)
		@attributes = [:semester, :semester_year, :course_number, :must_learn_class, :required_unrequired, :course_name, :teacher, :classification, :credit, :hours, :language, :time_classroom, :must_learn_limit, :other_limit, :all_limit, :must_learn_chosen, :other_chosen, :all_chosen, :authorized_students, :wait_for_authorized]
    h.each {|k, v| send("#{k}=",v)}
	end

	def to_hash
		@data = Hash[ @attributes.map {|d| [d.to_s, self.instance_variable_get('@'+d.to_s)]} ]
	end

	def to_json
		JSON.pretty_generate @data
	end
end

class ServiceMaster < ActiveRecord::Base
  
  validates_presence_of :service_desc,:hrs_est, :status_code
  validates_numericality_of :hrs_est
  
end

# frozen_string_literal: true

class DepartmentsController < ApplicationController
  before_action :set_department, only: [:fix]

  def fix
    puts @department
    json_response(input_department: @department, fixed_department: fix_department)
  end

  private

  def set_department
    @department = params[:department]
  end

  def fix_department
    # Key: input department name
    # Value: fixed department name
    options = {
      'Barranquilla D.E.' => 'Atlántico',
      'Bogotá D.C.' => 'Cundinamarca',
      'Cartagena D.T. y C.' => 'Bolívar',
      'Santa Marta D.T. y C.' => 'Magdalena'
    }
    options[@department] || @department
  end
end

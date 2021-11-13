# frozen_string_literal: true

class DepartmentsController < ApplicationController
  before_action :set_department, only: [:fix]

  def fix
    puts @department
    render json: { department: fix_department[@department] }, status: :ok
  end

  private

  def set_department
    @department = params[:department]
  end

  def fix_department
    # Key: input department name
    # Value: fixed department name
    {
      'Barranquilla D.E.' => 'Atlántico',
      'Bogotá D.C.' => 'Cundinamarca',
      'Cartagena D.T. y C.' => 'Bolivar',
      'Santa Marta D.T. y C.' => 'Magdalena'
    }
  end
end

module Response
  def json_response(data, status = :ok)
    render json: { success: status == :ok, data: data }, status: status
  end
end

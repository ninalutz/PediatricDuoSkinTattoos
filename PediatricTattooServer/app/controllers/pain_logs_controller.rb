class PainLogsController < ApplicationController
	before_action :prepare_pain_log, only: [:show, :update, :destroy]

	def index
		@pain_logs = PainLog.all
		render json: @pain_logs
	end

	def show
		render json: @pain_log
	end

	def new
	end

	def create
		@pain_log = PainLog.new(patient_params)
	    if @pain_log.save
	      render json: @pain_log
	    else
	      render json: { errors: @pain_log.errors.full_messages }
	    end
	end

	def update
		if @pain_log.update(patient_params)
	      render json: @pain_log
	    else
	      render json: { errors: @pain_log.errors.full_messages }
	    end
	end

	def destroy
		@pain_log.destroy
	    render json: { success: "true" }
	  rescue ActiveRecord::InvalidForeignKey
	    render json: { errors: "this patient is in use by other things" }
	end

	private

	def prepare_patient
		@pain_log = Patient.find(params[:id])
	end

	def patient_params
		params.require(:patient).permit(:name, :ble_id, :doctor)
	end
end

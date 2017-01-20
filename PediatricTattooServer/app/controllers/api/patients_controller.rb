class PatientsController < ApplicationController
	before_action :prepare_patient, only: [:show, :update, :destroy, :pain_log]

	def index
		@patients = Patient.all
		render json: @patients
	end

	def show
		render json: @patient
	end

	def new
		@patient = Patient.new
	end

	def create
		@patient = Patient.new(patient_params)
	    if @patient.save
	      render json: @patient
	    else
	      render json: { errors: @patient.errors.full_messages }
	    end
	end

	def update
		if @patient.update(patient_params)
	      render json: @patient
	    else
	      render json: { errors: @patient.errors.full_messages }
	    end
	end

	def destroy
		@patient.destroy
	    render json: { success: "true" }
	  rescue ActiveRecord::InvalidForeignKey
	    render json: { errors: "this patient is in use by other things" }
	end

	def search
		@patient = Patient.find_by(ble_id: params[:ble_id])
		render json: @patient
	end

	def pain_log
		@pain_log = @patient.pain_logs
		render json: @pain_log
	end

	private

	def prepare_patient
		@patient = Patient.find(params[:id])
	end

	def patient_params
		params.require(:patient).permit(:name, :ble_id, :doctor)
	end
end

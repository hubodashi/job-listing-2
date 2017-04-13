class JobsController < ApplicationController
 before_action :authenticate_user!, only; [:new, :create, :update, :edit, :destroy]
 def index
   @jobs=Job.all
 end
 def show
  @job=Job.find(params[:id])
 end
 def new
   @job=Job.new
 end
 def create
  @job=Job.new(job_params)
  if @job.save
    redirect_to job_path
  else
    render :new
  end
  def edit
    @job =Job.find(params[:id])
  end
  def update
    @job=Job.find(params[:id])
    if @job=Job.find(params[:id])
      redirect_to jobs_path
    else
      render :edit
  end
  def destroy
    @job = Job.find.(params[:id])
    @job.destroy
    redirect_to jobs_path
  end
 end
 private
 def job_params
   params.require(:job).permit(:title, :description)
 end
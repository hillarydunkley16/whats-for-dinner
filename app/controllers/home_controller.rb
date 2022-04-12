class HomeController < ApplicationController
  def input_protein
    required = [:input1, :input2, :input3, :input4, :input5, :reply]
    form_complete = true
    required.each do |f|
      if params.has_key? f and not params[f].blank?
        #do nothing
      else
        form_complete = false
      end
    end 
    if form_complete
      form_status_msg = "Great. Let's continue!"
    else
      form_status_msg = "Please fill in all fields."
    end
    respond_to do |format|
      format.html {render :protein, locals: {status_msg: form_status_msg, feedback: params}}
    end
  end
  def index
    respond_to do |format|
      format.html()
    end
    #@data = Datum.all
  end
  def show
    @data = Datum.find(params[:id])
  end

  def protein
    respond_to do |format|
      format.html {render :protein, locals: [feedback: {}}
    end
  end
end

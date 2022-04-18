class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html()
    end
    #@data = Datum.all
  end
  def create
    @protein = protein.new(params[:protein])
    if @protein.save
      redirect_to @user, alert: "Protein inputed successfully."
    else
      redirect_to new_user_path, alert: "Error!"
    end
  end
  def show
    @protein = protein.find(params[:id])
  end

  def protein
    respond_to do |format|
      format.html {render :protein, locals: {feedback: {}}}
    end
  end

  def input_protein
    required = [:input1, :input2, :input3, :input4, :input5]
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
    #respond_to do |format|
      #format.html {render :veg, locals: {status_msg: form_status_msg, feedback: params}}
    #end
    @recipe = Recipe.new(protein1: params[:input1], protein2: params[:input2], protein3: params[:input3], protein4: params[:input4], protein5: params[:input5])
    puts "protein is #{@recipe.id}"
    session[:passed_recipe] = @recipe 
    redirect_to controller: 'home', action: 'veg', id: @recipe.id

  end

  def veg
    @recipe = Recipe.find(params[:id])
    puts "veg is #{@recipe.id}"
    #respond_to do |format|
      #format.html {render :veg}
  end

  def input_veg
    required = [:input1, :input2, :input3, :input4, :input5]
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
      format.html {render :veg, locals: {status_msg: form_status_msg, feedback: params}}
    end
    @recipe=Recipe1.order('id ASC')
    @recipe=Recipe1.new()

  end

  def aromatics
    respond_to do |format|
      format.html {render :aromatics}
    end
  end

  def input_aromatics
    required = [:input1, :input2, :input3, :input4, :input5]
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
      format.html {render :aromatics, locals: {status_msg: form_status_msg, feedback: params}}
    end
  end

  def oils
    respond_to do |format|
      format.html {render :oils}
    end
  end
  
  def input_oils
    required = [:input1, :input2, :input3, :input4, :input5]
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
      format.html {render :oils, locals: {status_msg: form_status_msg, feedback: params}}
    end
  end
  def starch
    respond_to do |format|
      format.html {render :starch}
    end
  end
  
  def input_starch
    required = [:input1, :input2, :input3, :input4, :input5]
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
      format.html {render :starch, locals: {status_msg: form_status_msg, feedback: params}}
    end
  end

end

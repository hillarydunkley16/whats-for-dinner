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
    @recipe = Recipe.new(protein1: params[:protein][:input1], protein2: params[:protein][:input2], protein3: params[:protein][:input3], protein4: params[:protein][:input4], protein5: params[:protein][:input5])
    if @recipe.save
      puts "protein is #{params[:protein][:input1]}"
      redirect_to controller: 'home', action: 'veg', id: @recipe.id
    else
      redirect_to new_user_path, alert: 'Error!'
    end
    session[:recipe_id] = @recipe.id
    #redirect_to controller: 'home', action: 'veg', id: @recipe.id

  end

  def veg
    @recipe = Recipe.find(session[:recipe_id])
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
    #respond_to do |format|
      #format.html {render :veg, locals: {status_msg: form_status_msg, feedback: params}}
    #end
    #@recipe=Recipe1.order('id ASC')
    @recipe = Recipe.new(veg1: params[:veg][:input1], veg2: params[:veg][:input2], veg3: params[:veg][:input3], veg4: params[:veg][:input4], veg5: params[:veg][:input5])
    if @recipe.save
      puts "vegetable is #{params[:veg][:input1]}"
      redirect_to controller: 'home', action: 'aromatics', id: @recipe.id
    else
      redirect_to new_user_path, alert: 'Error!'
    end
    session[:recipe_id] = @recipe.id
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
    @recipe = Recipe.new(aromatics1: params[:aromatics][:input1], aromatics2: params[:aromatics][:input2], aromatics3: params[:aromatics][:input3], aromatics4: params[:aromatics][:input4], aromatics5: params[:aromatics][:input5])
    if @recipe.save
      puts "vegetable is #{params[:aromatics][:input1]}"
      redirect_to controller: 'home', action: 'oils', id: @recipe.id
    else
      redirect_to new_user_path, alert: 'Error!'
    end
    session[:recipe_id] = @recipe.id
    #respond_to do |format|
      #format.html {render :aromatics, locals: {status_msg: form_status_msg, feedback: params}}
    #end
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
    #respond_to do |format|
      #format.html {render :oils, locals: {status_msg: form_status_msg, feedback: params}}
    #end
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

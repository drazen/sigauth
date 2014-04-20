class SignaturesController < ApplicationController

  def show
    @signature = Signature.find(params[:id])
  end

  def create
    @signature = Signature.new( params[:id] )
    @signature.name = params[:name]
    @signature.signature = params[:signature]
    #write signature to local file for jeff's testins
    File.open('/tmp/signatures.json', 'w') {|f| f.write(params[:signature]) }
    respond_to do |format|
      if @signature.save
        flash[:notice] = 'Signature was successfully created.'
        format.html { redirect_to :back }
        # format.html { redirect_to(@signature) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @signature.errors, :status => :unprocessable_entity }
      end
    end
  end

  def new
    @signature = Signature.new( params[:id] )
    respond_to do |format|
      format.html
      format.xml  { render :xml => @signature}
    end
  end

  def edit
    @signature = Signature.find( params[:id] )
    respond_to do |format|
      format.html
      format.xml  { render :xml => @signature}
    end
  end

  def update
  end
end

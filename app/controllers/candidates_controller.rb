class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def show
  end

  def new
    @candidate = Candidate.new
  end

  def edit
  end

  def create
    @candidate = Candidate.new(candidate_params)
    respond_to do |format|
      if @candidate.save
        format.html { redirect_to @candidate, notice: "Candidate was successfully created." }
        format.json { render :show, status: :created, location: @candidate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @candidate.update(candidate_params)
        format.html { redirect_to @candidate, notice: "candidate was successfully updated." }
        format.json { render :show, status: :ok, location: @candidate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /candidates/1 or /candidates/1.json
  def destroy
    @candidate.destroy
    respond_to do |format|
      format.html { redirect_to candidates_url, notice: "candidate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    def set_candidate
      @candidate = candidate.find(params[:id])
    end

    def candidate_params
      params.require(:candidate).permit(:first_name, :last_name, :age, :dob)
    end

end

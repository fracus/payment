class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end
  
  def create
    @employee = Employee.new(employee_params)

    @employee.save

    redirect_to :action => :show, :id => @employee.id
   end

   def show
    @employee = Employee.find(params[:id])
  end

  def index
    @employees = Employee.all
  end

  def edit
    @employee= Employee.find(params[:id])
  end


  def update

   @first_name = params[:employee]["first_name"];
   @last_name = params[:employee]["last_name"];
   @address = params[:employee]["address"];
   @cuit = params[:employee]["cuit"];
   @employee = Employee.find(params[:id]);  
   @employee.first_name = @first_name;
   @employee.last_name = @last_name;
   @employee.address = @address;
   @employee.cuit = @cuit;

   @employee.save()

    
      redirect_to :action => :show, :id => @employee.id
    
  end
  private

  def employee_params
    params.require(:employee).permit(:first_name,:last_name,:address,:cuit)
  end

end

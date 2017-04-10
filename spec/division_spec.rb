require("spec_helper")

describe(Division) do
  describe("#employees") do
    it("tells which employees are in this division") do
      division1 = Division.create({:name => 'HR'})
      employee1 = Employee.create({:name => 'Jeff', :division_id => division1.id})
      employee2 = Employee.create({:name => 'Brian',:division_id => division1.id})
      expect(division1.employees()).to(eq([employee1, employee2]))
    end
  end

end

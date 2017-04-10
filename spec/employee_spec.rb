require('spec_helper')

describe(Employee) do
  describe('#division') do
    it("tells which division an employee belongs to") do
      division1 = Division.create({:name => 'HR'})
      division2 = Division.create({:name => 'Finance'})
      employee1 = Employee.create({:name => 'Jeff', :division_id => division1.id})
      employee2 = Employee.create({:name => 'Brian',:division_id => division2.id})
      expect(employee1.division()).to(eq(division1))
      expect(employee2.division()).to(eq(division2))

    end
  end
end

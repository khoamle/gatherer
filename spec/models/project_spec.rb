require 'rails_helper'

RSpec.describe Project do

  describe "initialization" do
    let(:project) { Project.new }
    let(:task) { Task.new }  
    it "considers a project with no tasks do be done" do 
      expect(project).to be_done
    end
    it "knows that a project with an incomplete task is not alone" do 
      project.tasks << task
      expect(project).to_no be_done
    end
  end
end
require "rails_helper"

RSpec.describe Project, type: :model do

    context "validation tests" do
        it "ensures the title is present" do
            project = Project.new(description: "Content of the description")
            expect(project.valid?).to eq(false)
        end

        it "ensures the subtitle is present" do
            project = Project.new(title: "Content of the description")
            expect(project.valid?).to eq(false)
        end

        it "ensures the images is present" do
            project = Project.new(title: "Content of the description")
            expect(project.valid?).to eq(false)
        end

        it "ensures the description is present" do
            project = Project.new(title: "Title")
            expect(project.valid?).to eq(false)
        end

        it "should be able to save project" do
            project = Project.new(title: "Title", subtitle: "my subtitle", images: "Path/to/image", description: "Some description content goes here")
            expect(project.save).to eq(true)
        end
    end

    context "scope tests" do
        let(:params) { { title: "Title", subtitle: "my subtitle", images: "Path/to/image", description: "some description" } }
        before(:each) do
            Project.create(params)
            Project.create(params)
            Project.create(params)
        end

        it "should return all projects" do
            expect(Project.count).to eq(4)
        end

    end
end

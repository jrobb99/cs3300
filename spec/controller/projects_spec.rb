require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
    context "GET #index" do
        it "returns an success response" do
            get :index
            # expect(response.success).to eq(true)
            expect(response).to be_success
        end
    end

    context "GET #show" do
        let!(:project) { Project.create(title: "Test title", subtitle: "my subtitle", images: "Path/to/image", description: "Test description") }
        it "returns a success response" do
            get :show, params: { id: project }
            expect(response).to be_success
        end
    end

    context "GET #edit" do
        let!(:project) { Project.create(title: "Test title", subtitle: "my subtitle", images: "path/to/image", description: 'test description') }
        it "returns a success response" do
            get :edit, params: { id: project }
            expect(response).to be_success
        end
    end
    
end

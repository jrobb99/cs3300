require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
    describe "GET /" do
        login_user

        context "from login user" do
            it "should return 200:OK" do
                get :index
                expect(response).to have_http_status(:success)
            end
        end
    end

    context "GET #index" do
        login_user
        it "returns an success response" do
            get :index
            # expect(response.success).to eq(true)
            expect(response).to be_success
        end
    end

    context "GET #show" do
        login_user
        let!(:project) { Project.create(title: "Test title", subtitle: "my subtitle", images: "Path/to/image", description: "Test description") }
        it "returns a success response" do
            get :show, params: { id: project }
            expect(response).to be_success
        end
    end

    context "GET #edit" do
        login_user
        let!(:project) { Project.create(title: "Test title", subtitle: "my subtitle", images: "path/to/image", description: 'test description') }
        it "returns a success response" do
            get :edit, params: { id: project }
            expect(response).to be_success
        end
    end
    
end

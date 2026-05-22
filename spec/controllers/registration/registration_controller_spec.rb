RSpec.describe RegistrationController, type: :controller do
  describe "GET #new" do
    it "renders the new template" do
      get :new

      expect(response).to render_template(:new)
      expect(response).to have_http_status(:ok)
    end

    it "assigns a new Registration to @registration" do
      get :new

      expect(assigns(:registration)).to be_a_new(Registration)
    end
  end

  describe "POST #create" do
    let(:valid_params) do
      {
        registration: {
          first_name:             "Priya",
          last_name:              "Sharma",
          registration_number:    "MH-12345678",
          specialization:         "Cardiology",
          qualification:          "MBBS, MD",
          hospital_or_clinic_name: "Ruby Hall Clinic",
          phone:                  "9876543210",
          email:                  "priya@example.com",
          area:                   "Kothrud"
        }
      }
    end

    let(:invalid_params) do
      { registration: { first_name: "", last_name: "", email: "not-an-email" } }
    end

    context "with valid params" do
      it "creates a new Registration" do
        expect {
          post :create, params: valid_params
        }.to change(Registration, :count).by(1)
      end

      it "redirects to root_path" do
        post :create, params: valid_params

        expect(response).to redirect_to(root_path)
      end

      it "sets a success flash notice" do
        post :create, params: valid_params

        expect(flash[:notice]).to match(/48 hours/i)
      end
    end

    context "with invalid params" do
      it "does not create a Registration" do
        expect {
          post :create, params: invalid_params
        }.not_to change(Registration, :count)
      end

      it "re-renders the new template" do
        post :create, params: invalid_params

        expect(response).to render_template(:new)
      end

      it "returns 422 unprocessable entity" do
        post :create, params: invalid_params

        expect(response).to have_http_status(422)
      end

      it "exposes the invalid registration to the view" do
        post :create, params: invalid_params

        expect(assigns(:registration)).to be_a(Registration)
        expect(assigns(:registration)).not_to be_persisted
        expect(assigns(:registration).errors).not_to be_empty
      end
    end

    context "with a document attachment" do
      it "accepts a file upload without error" do
        file = Tempfile.new([ "sample_certificate", ".pdf" ]).tap do |f|
          f.write("%PDF-1.4 test")
          f.rewind
        end
        upload = Rack::Test::UploadedFile.new(file.path, "application/pdf")

        expect {
          post :create, params: valid_params.deep_merge(registration: { document: upload })
        }.to change(Registration, :count).by(1)
      end
    end
  end
end

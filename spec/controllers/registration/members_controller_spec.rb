require "rails_helper"

RSpec.describe MembersController, type: :controller do
  let(:approved_attrs) do
    {
      first_name:              "Anand",
      last_name:               "Kulkarni",
      registration_number:     "MH-10000001",
      specialization:          "Cardiology",
      qualification:           "MBBS, MD",
      hospital_or_clinic_name: "Ruby Hall Clinic",
      phone:                   "9876543210",
      email:                   "anand@example.com",
      area:                    "Kothrud",
      status:                  "approved"
    }
  end

  let(:pending_attrs) do
    {
      first_name:              "Priya",
      last_name:               "Sharma",
      registration_number:     "MH-10000002",
      qualification:           "MBBS, DM",
      hospital_or_clinic_name: "KEM Hospital",
      phone:                   "9123456780",
      email:                   "priya@example.com",
      area:                    "Shivajinagar",
      status:                  "pending"
    }
  end

  let(:rejected_attrs) do
    {
      first_name:              "Ravi",
      last_name:               "Desai",
      registration_number:     "MH-10000003",
      qualification:           "MBBS, DVD",
      hospital_or_clinic_name: "Sahyadri Hospital",
      phone:                   "9988776655",
      email:                   "ravi@example.com",
      area:                    "Pune Camp",
      status:                  "rejected"
    }
  end

  let!(:approved_reg) { Registration.create!(approved_attrs) }
  let!(:pending_reg)  { Registration.create!(pending_attrs) }
  let!(:rejected_reg) { Registration.create!(rejected_attrs) }

  # ---------------------------------------------------------------------------
  # GET #index — base visibility
  # ---------------------------------------------------------------------------
  describe "GET #index" do
    before { get :index }

    it "returns 200 ok" do
      expect(response).to have_http_status(:ok)
    end

    it "renders the index template" do
      expect(response).to render_template(:index)
    end

    it "includes approved registrations in the members list" do
      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "excludes pending registrations from the members list" do
      expect(assigns(:registrations)).not_to include(pending_reg)
    end

    it "excludes rejected registrations from the members list" do
      expect(assigns(:registrations)).not_to include(rejected_reg)
    end

    it "returns an empty list when no registrations are approved" do
      approved_reg.update!(status: "pending")
      get :index

      expect(assigns(:registrations)).to be_empty
    end

    it "orders results newest first" do
      older = Registration.create!(
        approved_attrs.merge(
          registration_number: "MH-10000099",
          email:               "older@example.com",
          created_at:          2.days.ago
        )
      )
      get :index

      expect(assigns(:registrations).first).to eq(approved_reg)
      expect(assigns(:registrations).last).to eq(older)
    end
  end

  # ---------------------------------------------------------------------------
  # GET #index — search
  # ---------------------------------------------------------------------------
  describe "GET #index with search" do
    it "returns approved records matching first_name" do
      get :index, params: { search: "Anand" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "returns approved records matching last_name" do
      get :index, params: { search: "Kulkarni" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "returns approved records matching hospital_or_clinic_name" do
      get :index, params: { search: "Ruby Hall" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "returns approved records matching area" do
      get :index, params: { search: "Kothrud" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "returns approved records matching registration_number" do
      get :index, params: { search: "MH-10000001" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "is case-insensitive" do
      get :index, params: { search: "ANAND" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "does not return pending records even when the search term matches" do
      get :index, params: { search: "Priya" }

      expect(assigns(:registrations)).not_to include(pending_reg)
    end

    it "does not return rejected records even when the search term matches" do
      get :index, params: { search: "Ravi" }

      expect(assigns(:registrations)).not_to include(rejected_reg)
    end

    it "returns no results for a term that matches nothing" do
      get :index, params: { search: "zzznomatch" }

      expect(assigns(:registrations)).to be_empty
    end
  end

  # ---------------------------------------------------------------------------
  # GET #index — specialization filter
  #
  # All three tests use approved records only — the filter operates on the
  # approved base scope, so there is no meaningful "pending leaks through"
  # test here (base visibility covers that already).
  # ---------------------------------------------------------------------------
  describe "GET #index with specialization filter" do
    it "returns approved records matching the given specialization" do
      get :index, params: { specialization: "Cardiology" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "excludes approved records that do not match the specialization" do
      second_approved = Registration.create!(
        approved_attrs.merge(
          registration_number: "MH-10000005",
          email:               "second@example.com",
          specialization:      "Dermatology"
        )
      )
      get :index, params: { specialization: "Cardiology" }

      expect(assigns(:registrations)).not_to include(second_approved)
    end

    it "returns no results when no approved records match the specialization" do
      get :index, params: { specialization: "Psychiatry" }

      expect(assigns(:registrations)).to be_empty
    end
  end

  # ---------------------------------------------------------------------------
  # GET #index — area filter
  # ---------------------------------------------------------------------------
  describe "GET #index with area filter" do
    it "returns approved records for the given area" do
      get :index, params: { area: "Kothrud" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "does not return pending records even when area matches" do
      # pending_reg is in Shivajinagar; no approved record is
      get :index, params: { area: "Shivajinagar" }

      expect(assigns(:registrations)).not_to include(pending_reg)
    end

    it "returns no results when no approved records match the area" do
      get :index, params: { area: "Baner" }

      expect(assigns(:registrations)).to be_empty
    end
  end

  # ---------------------------------------------------------------------------
  # GET #index — combined filters
  # ---------------------------------------------------------------------------
  describe "GET #index with combined search and filters" do
    it "narrows results when both search and specialization are provided" do
      get :index, params: { search: "Anand", specialization: "Cardiology" }

      expect(assigns(:registrations)).to include(approved_reg)
    end

    it "returns nothing when combined filters match no approved records" do
      get :index, params: { search: "Anand", specialization: "Psychiatry" }

      expect(assigns(:registrations)).to be_empty
    end
  end

  # ---------------------------------------------------------------------------
  # GET #index — stats
  # ---------------------------------------------------------------------------
  describe "GET #index stats" do
    before { get :index }

    it "sets @total_count to all registrations regardless of status" do
      # approved_reg + pending_reg + rejected_reg = 3
      expect(assigns(:total_count)).to eq(3)
    end

    it "sets @approved_count to approved registrations only" do
      expect(assigns(:approved_count)).to eq(1)
    end

    it "sets @specialization_count to distinct specializations among approved records" do
      # only approved_reg has a specialization (Cardiology)
      expect(assigns(:specialization_count)).to eq(1)
    end

    it "reflects a correct @approved_count after a pending record is approved" do
      pending_reg.update!(status: "approved")
      get :index
      expect(assigns(:approved_count)).to eq(2)
    end
  end

  # ---------------------------------------------------------------------------
  # GET #index — @areas dropdown
  # ---------------------------------------------------------------------------
  describe "GET #index @areas dropdown" do
    before { get :index }

    it "includes areas from approved registrations" do
      expect(assigns(:areas)).to include("Kothrud")
    end

    it "does not include areas from pending registrations" do
      expect(assigns(:areas)).not_to include("Shivajinagar")
    end

    it "does not include areas from rejected registrations" do
      expect(assigns(:areas)).not_to include("Pune Camp")
    end

    it "returns areas sorted alphabetically" do
      Registration.create!(
        approved_attrs.merge(
          registration_number: "MH-10000004",
          email:               "aundh@example.com",
          area:                "Aundh"
        )
      )
      get :index
      expect(assigns(:areas)).to eq(assigns(:areas).sort)
    end

    it "does not contain nil values" do
      expect(assigns(:areas)).not_to include(nil)
    end
  end
end

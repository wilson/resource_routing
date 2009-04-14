require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ThingsController do
  route_matches "/thing", :delete, :controller => "things", :action => "destroy"
  route_matches "/thing", :post, :controller => "things", :action => "create"

  it "creates" do
    post :create
    response.body.should == "CREATE"
  end

  it "destroys" do
    delete :destroy
    response.body.should == "DESTROY"
  end
end


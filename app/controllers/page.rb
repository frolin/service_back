BoilerplateStarter::App.controllers :page do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   'Maps to url '/foo/#{params[:id]}''
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :home, :map => '/', :provides => [:html, :js] do
    haml :'page/home'
  end

  get :service, :provides => [:html, :js] do
    haml :'page/service'
    render :'page/service', layout: !request.xhr?
  end

  get :about do
    haml :'page/about'
  end

end

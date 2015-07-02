BoilerplateStarter::App.controllers :page, :cache => true do
  expires 86400*30


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


  get :contact, :provides => [:js, :html], :map => '/'do
    cache_key :contact
    haml :'page/contact'
    render :'page/contact', layout: !request.xhr?

  end


  get :service, :provides => [:js, :html] do
    cache_key :service
    erb :'page/service'
    render  :'page/service', layout: !request.xhr?
  end


end

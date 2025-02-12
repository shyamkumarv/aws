file '/opt/tomcat.sh' do
	action :create
	content 'wget http://www-eu.apache.org/dist/tomcat/tomcat- 8/v8.5.20/bin/apache-tomcat-8.5.20.tar.gz
		tar xvzf apache-tomcat-8.5.20.tar.gz
		mv apache-tomcat-8.5.20 tomcat8
		cd tomcat8'
		mode '0777'
end

cookbook_file '/opt/tomcat8/conf/tomcat-users.xml' do
  source 'tomcat-user.xml'

end


end


script 'file' do
		interpreter "bash"
		code <<-EOH
		cd /opt
		sh tomcat.sh
		EOH

end


script 'test' do
	        interpreter "bash"
                code <<-EOH
                cd /opt/tomcat8
		   ./bin/startup.sh
                EOH
end


chef file




<?xml version="1.0" encoding="UTF-8"?>
<tomcat-users xmlns="http://tomcat.apache.org/xml"
xmlns:xsi="http://www.w3.org/2001/XMLSchemainstance"                xsi:schemaLocation="http://tomcat.apache.org/xmltomcat-users.xsd"
version="1.0">

  <role rolename="manager-gui"/>
  <role rolename="manager-script"/>
<userusername="giri"password="nani"roles="managergui,managerscript"/>
  </tomcat-users>:
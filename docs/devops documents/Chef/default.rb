# This is a Chef attributes file. It can be used to specify default and override
# attributes to be applied to nodes that run this cookbook.

# Set a default name
default["starter_name"] = "Sam Doe"

# For further information, see the Chef documentation (https://docs.chef.io/essentials_cookbook_attribute_files.html).

case node["platform"]

when "ubuntu"
default["package_name"]="apache2"
default["service_name"]="apache2"
default["document_root"]="/var/www/html"

when "amazon"
default["package_name"]="httpd"
default["service_name"]="httpd"
default["document_root"]="/var/www/html"
end

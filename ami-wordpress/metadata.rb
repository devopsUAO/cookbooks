name 'ami-wordpress'
maintainer 'Simian'
maintainer_email 'sebastian@simian.co'
license 'all_rights'
description 'Installs/Configures wordpress'
long_description 'Installs/Configures wordpress'
version '1.0.0'

depends 'application', '~> 5.0'
depends 'application_git', '~> 1.1.0'
depends 'apt', '~> 5.0.1'
depends 'varnish', '~> 4.0.0'

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/wordpress/issues' if respond_to?(:issues_url)

# The `source_url` points to the development reposiory for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/wordpress' if respond_to?(:source_url)
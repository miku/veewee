# Install Ruby
# yum -y install ruby ruby-devel rubygems

cd /tmp

# Remove old Ruby
yum remove ruby

# Install dependencies
yum groupinstall "Development Tools"
yum install zlib zlib-devel
yum install openssl-devel
wget http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz
tar xzvf yaml-0.1.4.tar.gz
cd yaml-0.1.4
./configure
make
make install

# Install ruby
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p484.tar.gz
tar zxf ruby-1.9.3-p484.tar.gz
cd ruby-1.9.3-p484
./configure
make
make install

# Update rubygems
# gem update --system
# gem install bundler

# Test ruby and rubygems are working
# Close shell and reopen for changes to take effect
# ruby -v
# gem --version


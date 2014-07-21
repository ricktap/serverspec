require 'spec_helper'

set :os, :family => 'solaris'

describe commands.command_class('user').create do
  it { should be_an_instance_of(Specinfra::Command::Solaris::Base::User) }
end

describe user('root') do
  it { should belong_to_group 'root' }
end

describe user('root') do
  it { should_not belong_to_group 'invalid-group' }
end

describe user('root') do
  it { should have_login_shell '/bin/bash' }
end

describe user('root') do
  it { should_not have_login_shell 'invalid-login-shell' }
end

describe user('root') do
  it { should have_home_directory '/root' }
end

describe user('root') do
  it { should_not have_home_directory 'invalid-home-directory' }
end


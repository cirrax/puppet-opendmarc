
require 'spec_helper'

describe 'opendmarc' do
  let :default_params do
     { :configs  => {},
       :defaults => {},
     }
  end

  shared_examples 'opendmarc shared examples' do
    it { is_expected.to compile.with_all_deps }

    it { is_expected.to contain_class( 'opendmarc::service') }
    it { is_expected.to contain_class( 'opendmarc::install') }
  end

  context 'with defaults' do
    let :params do
      default_params
    end
    it_behaves_like 'opendmarc shared examples'
  end
end

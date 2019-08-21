
require 'spec_helper'

describe 'opendmarc::service' do
  let :default_params do
    { service_name: 'opendmarc',
      service_ensure: 'running',
      service_enable: true }
  end

  shared_examples 'opendmarc::service shared examples' do
    it { is_expected.to compile.with_all_deps }

    it {
      is_expected.to contain_service('opendmarc')
        .with_ensure(params[:service_ensure])
        .with_enable(params[:service_enable])
        .with_name(params[:service_name])
    }
  end

  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with defaults' do
        let :params do
          default_params
        end

        it_behaves_like 'opendmarc::service shared examples'
      end

      context 'with non defaults' do
        let :params do
          default_params.merge(
            service_name: 'someother',
            service_ensure: 'stopped',
            service_enable: false,
          )
        end

        it_behaves_like 'opendmarc::service shared examples'
      end
    end
  end
end

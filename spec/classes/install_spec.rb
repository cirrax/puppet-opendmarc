
require 'spec_helper'

describe 'opendmarc::install' do
  let :default_params do
    { packages: ['opendmarc'],
      package_ensure: 'installed' }
  end

  shared_examples 'opendmarc::install shared examples' do
    it { is_expected.to compile.with_all_deps }

    it {
      is_expected.to contain_package('opendmarc')
        .with_ensure(params[:package_ensure])
        .with_tag('opendmarc-packages')
    }
  end
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      context 'with defaults' do
        let :params do
          default_params
        end

        it_behaves_like 'opendmarc::install shared examples'
      end

      context 'with non defaults' do
        let :params do
          default_params.merge(
            packages: ['opendmarc', 'someother'],
            package_ensure: 'absent',
          )
        end

        it_behaves_like 'opendmarc::install shared examples'

        it {
          is_expected.to contain_package('someother')
            .with_ensure(params[:package_ensure])
            .with_tag('opendmarc-packages')
        }
      end
    end
  end
end

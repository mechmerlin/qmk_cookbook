title 'packages'

control 'packages' do
  title 'what packages are installed'
  desc 'Verify packages are installed'

  describe package('git') do
    it { should be_installed }
  end
end

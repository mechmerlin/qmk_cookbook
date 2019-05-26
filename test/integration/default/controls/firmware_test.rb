title 'firmware'

control 'firmware-existence' do
  title 'does qmk_firmware exist'
  desc 'verify qmk_firmware repo has been cloned'

  user_path = '/home/vagrant/Documents'
  firmware_path = ::File.join user_path, 'qmk_firmware'

  describe directory(firmware_path) do
    it { should exist }
  end

  describe directory(::File.join(firmware_path, 'keyboards')) do
    it { should exist }
  end

  describe directory(::File.join(firmware_path, 'quantum')) do
    it { should exist }
  end

  describe directory(::File.join(firmware_path, '.git')) do
    it { should exist }
  end
end

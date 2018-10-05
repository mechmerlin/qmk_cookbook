title 'packages'

packages = ['gcc', 'unzip', 'wget', 'zip', 'gcc-avr', 'binutils-avr', 'avr-libc', 'dfu-programmer', 'dfu-util', 'gcc-arm-none-eabi', 'binutils-arm-none-eabi', 'libnewlib-arm-none-eabi', 'git', 'diffutils']

control 'packages' do
  title 'what packages are installed'
  desc 'Verify packages are installed'

  packages.each do |dependency|
    describe package(dependency) do
      it { should be_installed }
    end
  end
end

require 'formula'

class Neuron < Formula
  homepage ''
  url 'http://www.neuron.yale.edu/ftp/neuron/versions/v7.2/nrn-7.2.tar.gz'
  sha1 '29e4ba0d6c3e11f99350f4c7eb97847772c492c4'

  depends_on :x11 
  depends_on 'InterViews'

  def install
    #ENV['CFLAGS']='-Wno-return-type'
    #ENV['CXXFLAGS']='-Wno-return-type'
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--with-iv=#{HOMEBREW_PREFIX}"
    system "make" 
    system "make install" 
    x86_64.install Dir['*']
  end

  test do
    system "false"
  end
end

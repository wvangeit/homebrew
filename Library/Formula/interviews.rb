require 'formula'

class Interviews < Formula
  homepage ''
  url 'http://www.neuron.yale.edu/ftp/neuron/versions/v7.2/iv-17.tar.gz'
  sha1 '162d69bf527b32cbad445302449b723295617775'

  depends_on :x11

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make" 
    system "make install" 
    #prefix.install (prefix+"x86_64")
    HOMEBREW_PREFIX.install_symlink (prefix+"x86_64")
  end

  
  test do
    system "false"
  end
end

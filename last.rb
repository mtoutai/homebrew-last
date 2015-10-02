class Last < Formula
  homepage "http://last.cbrc.jp/"
  url "http://last.cbrc.jp/last-621.zip"
  sha256 "2768687f3e9ddd8b1dd80862d7d54e903d51d5a61869ad5a923fd06872484e4a"

  depends_on "parallel"

  def install
    system "make"
    bin.mkpath
    bin.install "src/lastal"
    bin.install "src/lastdb"
    bin.install "src/last-merge-batches"
    bin.install "src/last-pair-probs"
    bin.install "src/last-split"
    bin.install "scripts/fastq-interleave"
    bin.install "scripts/last-dotplot"
    bin.install "scripts/last-map-probs"
    bin.install "scripts/last-postmask"
    bin.install "scripts/last-train"
    bin.install "scripts/maf-convert"
    bin.install "scripts/maf-cull"
    bin.install "scripts/maf-join"
    bin.install "scripts/maf-sort"
    bin.install "scripts/maf-swap"
    bin.install "scripts/parallel-fasta"
    bin.install "scripts/parallel-fastq"
    bin.install "examples/last-bisulfite-paired.sh"
    bin.install "examples/last-bisulfite.sh"
    prefix.install "examples"
    prefix.install "doc"
  end

  bottle do
    root_url "https://github.com/mtoutai/homebrew-last/releases/download/bottles"
    cellar :any
    sha256 "1f87f3802cbc4e41c159a565478be6f8e407f6dc3236f1c26d6ca5431a8154eb" => :yosemite
    revision 1
    sha256 "66522292b0918402e8d17b03744747c16f5b2c25f15caabc38bdbabb9d41276f" => :el_capitan
  end

end

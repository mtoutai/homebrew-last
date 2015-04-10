class Last < Formula
  homepage "http://last.cbrc.jp/"
  url "http://last.cbrc.jp/last-548.zip"
  sha256 "a76e807cb169a2c4a2b23a859e6955f925771687fb53362ee45899f7282cb6d4"

  depends_on "parallel"

  def install
    system "make"
    bin.mkpath
    bin.install "src/lastal"
    bin.install "src/lastdb"
    bin.install "src/lastex"
    bin.install "src/last-merge-batches"
    bin.install "src/last-pair-probs"
    bin.install "src/last-split"
    bin.install "scripts/fastq-interleave"
    bin.install "scripts/last-dotplot"
    bin.install "scripts/last-map-probs"
    bin.install "scripts/last-postmask"
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
    sha256 "d7be8c05d4314c287460e628427dc55128dd8f1f79e51987e0176d59e8925017" => :yosemite
  end

end

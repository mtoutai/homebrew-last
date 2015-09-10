class Last < Formula
  homepage "http://last.cbrc.jp/"
  url "http://last.cbrc.jp/last-604.zip"
  sha256 "9831cb73fc0f58f2c679b2e10360e6585d0f2a0a79b784b565a745eef54fa607"

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
    sha256 "bdf60fb75bcf879e0b365e28e6ed3fe7cc155c68a334e23a37e6db417221af82" => :yosemite
  end

end

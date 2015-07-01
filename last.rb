class Last < Formula
  homepage "http://last.cbrc.jp/"
  url "http://last.cbrc.jp/last-588.zip"
  sha256 "22a7f006b760e9b082c5ed142de32fbbbe9635f8bb96544f57e695fa66080c91"

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
    sha256 "662527689a33c37bc5869a18e14457b224d9cf3e73421f772b3c5b3fcafed99d" => :yosemite
  end

end

class MongodbMongocryptd < Formula
  desc "mongocryptd service for Client Side Encryption"
  homepage "https://www.mongodb.com/"

  url "https://downloads.mongodb.com/osx/mongodb-cryptd-macos-x86_64-enterprise-6.0.0.tgz"
  sha256 "b919ed9f5d16fce1ac6e2582ba842dabe9d51c96851b0f16c3c9e4d7ddcec35d"
  license "MongoDB Customer Agreement"

  def caveats
    <<~EOS
      mongocryptd is licensed under the MongoDB Customer Agreement (https://www.mongodb.com/customer-agreement). Except for evaluation purposes, you may not use mongocryptd without a commercial license from MongoDB.
    EOS
  end

  def install
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/mongocryptd", "--version"
  end
end

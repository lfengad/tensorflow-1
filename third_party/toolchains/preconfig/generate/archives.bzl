load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def bazel_toolchains_archive():
    http_archive(
        name = "bazel_toolchains",
        #sha256 = "e9223c7ca0b7375f07dc2fc74637e38df13a4e59b684f756552e6a7a60f1ec0b",
        sha256 = "88e818f9f03628eef609c8429c210ecf265ffe46c2af095f36c7ef8b1855fef5",
        strip_prefix = "bazel-toolchains-92dd8a7a518a2fb7ba992d47c8b38299fe0be825",
        urls = [
            "file:///home/tashuang.zk/bazelbuild/92dd8a7a518a2fb7ba992d47c8b38299fe0be825.tar.gz",
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/bazelbuild/bazel-toolchains/archive/92dd8a7a518a2fb7ba992d47c8b38299fe0be825.tar.gz",
            "http://10.0.100.3/xuanbaby/xuan-pkg/-/raw/master/92dd8a7a518a2fb7ba992d47c8b38299fe0be825.tar.gz",
        ],
    )

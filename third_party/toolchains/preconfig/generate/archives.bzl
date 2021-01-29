load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def bazel_toolchains_archive():
    http_archive(
        name = "bazel_toolchains",
        sha256 = "e878604eae8abc3b9256f3ab4008d7dcc837a40cef4d43b815bca8a503444807",
        strip_prefix = "bazel-toolchains-92dd8a7a518a2fb7ba992d47c8b38299fe0be825",
        urls = [
            "https://storage.googleapis.com/mirror.tensorflow.org/github.com/bazelbuild/bazel-toolchains/archive/92dd8a7a518a2fb7ba992d47c8b38299fe0be825.tar.gz",
            "http://10.0.100.3/xuanbaby/xuan-pkg/-/raw/master/92dd8a7a518a2fb7ba992d47c8b38299fe0be825.tar.gz",
        ],
    )

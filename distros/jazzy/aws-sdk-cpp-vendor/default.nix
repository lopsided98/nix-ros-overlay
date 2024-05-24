
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, curl, openssl, zlib }:
buildRosPackage {
  pname = "ros-jazzy-aws-sdk-cpp-vendor";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_sdk_cpp_vendor-release/archive/release/jazzy/aws_sdk_cpp_vendor/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "ca62d5ec1f43687cd5cc9b9fc54b1ed7644e2cd3c9ee2a9097163f668f4be8b5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package curl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ openssl zlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package curl ];

  meta = {
    description = "A vendor package for aws-sdk-cpp";
    license = with lib.licenses; [ asl20 ];
  };
}

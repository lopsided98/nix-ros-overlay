
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, curl, openssl, zlib }:
buildRosPackage {
  pname = "ros-rolling-aws-sdk-cpp-vendor";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_sdk_cpp_vendor-release/archive/release/rolling/aws_sdk_cpp_vendor/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "d75b25de5013de4b49e91439f0a4d668a1a97c812359efbc2a3fbe70c25fea1b";
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

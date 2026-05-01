
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, curl, openssl, zlib }:
buildRosPackage {
  pname = "ros-lyrical-aws-sdk-cpp-vendor";
  version = "0.2.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_sdk_cpp_vendor-release/archive/release/lyrical/aws_sdk_cpp_vendor/0.2.1-4.tar.gz";
    name = "0.2.1-4.tar.gz";
    sha256 = "feae2087488777035b27c3c3563b07454f8d50fe82c74a6406b5da2fdcfe82d7";
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

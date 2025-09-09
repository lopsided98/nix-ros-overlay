
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, curl, openssl, zlib }:
buildRosPackage {
  pname = "ros-kilted-aws-sdk-cpp-vendor";
  version = "0.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_sdk_cpp_vendor-release/archive/release/kilted/aws_sdk_cpp_vendor/0.2.1-3.tar.gz";
    name = "0.2.1-3.tar.gz";
    sha256 = "da9934046c2405ff1fa3350a3643167f03d6cdd4eea8ebf150c021d6702de5ec";
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

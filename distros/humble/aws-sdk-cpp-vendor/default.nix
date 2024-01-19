
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, curl, openssl, zlib }:
buildRosPackage {
  pname = "ros-humble-aws-sdk-cpp-vendor";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_sdk_cpp_vendor-release/archive/release/humble/aws_sdk_cpp_vendor/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "3955e09d7edfe2510084b614e7d813034de26d0181638772e80f6560c81d48c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package curl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ openssl zlib ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package curl ];

  meta = {
    description = ''A vendor package for aws-sdk-cpp'';
    license = with lib.licenses; [ asl20 ];
  };
}

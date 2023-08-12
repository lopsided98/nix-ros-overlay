
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, ament-lint-auto, ament-lint-common, curl, openssl }:
buildRosPackage {
  pname = "ros-humble-aws-sdk-cpp-vendor";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/aws_sdk_cpp_vendor-release/archive/release/humble/aws_sdk_cpp_vendor/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "38df12f48b53e34a65afc79ceb5d41ab16336f029ce61f728ae9a4b7083211b2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package curl ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ openssl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package curl ];

  meta = {
    description = ''A vendor package for aws-sdk-cpp'';
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, protobuf, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-rolling-gz-msgs-vendor";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_msgs_vendor-release/archive/release/rolling/gz_msgs_vendor/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "7948f7d0f83ab75454e6dcf240aecf74f55166952a12c573813b17d3f125511c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor protobuf python3 python3Packages.protobuf tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-msgs 12.0.0

    Gazebo Messages: Protobuf messages and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, protobuf, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-kilted-gz-msgs-vendor";
  version = "0.2.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_msgs_vendor-release/archive/release/kilted/gz_msgs_vendor/0.2.2-2.tar.gz";
    name = "0.2.2-2.tar.gz";
    sha256 = "1e062fb8d66ff2ad91e7e1bbb2aac0b2c9e0e4a9b6fb8d3ed5499b88d11ca124";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor protobuf python3 python3Packages.protobuf tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-msgs11 11.0.2

    Gazebo Messages: Protobuf messages and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}

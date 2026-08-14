
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, protobuf, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-gz-msgs-vendor";
  version = "0.0.7-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_msgs_vendor-release/archive/release/jazzy/gz_msgs_vendor/0.0.7-1.tar.gz";
    name = "0.0.7-1.tar.gz";
    sha256 = "a862e1416c4d5174f13f0b05130d8c72870c2a4724fe3274e7e43181f02e171b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor protobuf python3 python3Packages.protobuf tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-msgs10 10.4.0

    Gazebo Messages: Protobuf messages and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, cmake, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, protobuf, python3, python3Packages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-lyrical-gz-msgs-vendor";
  version = "0.3.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_msgs_vendor-release/archive/release/lyrical/gz_msgs_vendor/0.3.3-3.tar.gz";
    name = "0.3.3-3.tar.gz";
    sha256 = "21500258cdedc1ce949174676f7ffe7bde70216befe0365c57fcb2692062e745";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor protobuf python3 python3Packages.protobuf tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package cmake ];

  meta = {
    description = "Vendor package for: gz-msgs 12.0.1

    Gazebo Messages: Protobuf messages and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}

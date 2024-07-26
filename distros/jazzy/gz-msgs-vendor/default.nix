
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-vendor-package, ament-cmake-xmllint, gz-cmake-vendor, gz-math-vendor, gz-tools-vendor, protobuf, python3, python3Packages, pythonPackages, tinyxml-2 }:
buildRosPackage {
  pname = "ros-jazzy-gz-msgs-vendor";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/gz_msgs_vendor-release/archive/release/jazzy/gz_msgs_vendor/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "50ca64cbb15614265024cb8868a72addbfaa53d79345076530dbc7ad24b3c482";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ament-cmake-xmllint pythonPackages.pytest ];
  propagatedBuildInputs = [ gz-cmake-vendor gz-math-vendor gz-tools-vendor protobuf python3 python3Packages.protobuf tinyxml-2 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for: gz-msgs10 10.3.0

    Gazebo Messages: Protobuf messages and functions for robot applications";
    license = with lib.licenses; [ asl20 ];
  };
}

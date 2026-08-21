
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-elite-robots-calibration";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_calibration/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "319fd3e9ce974118d24cdef1a74a3e8ea551faeacdbb83375ba5789c4593c3a0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for extracting the factory calibration from a CS robot and change it such that it can be used by elite_robots_description to gain a correct URDF";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, ur-client-library, ur-robot-driver, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-ur-calibration";
  version = "2.4.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_calibration/2.4.13-1.tar.gz";
    name = "2.4.13-1.tar.gz";
    sha256 = "2da16c72786ced938f298eeb3815ebeb703642a95de11976e3e67ab295693c2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen rclcpp ur-client-library ur-robot-driver yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF";
    license = with lib.licenses; [ bsd3 ];
  };
}

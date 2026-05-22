
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, ur-client-library, ur-robot-driver, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-ur-calibration";
  version = "6.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_calibration/6.0.0-1.tar.gz";
    name = "6.0.0-1.tar.gz";
    sha256 = "b1e9318b34f8135b583ec4e8dbcbe60742fbe754b9a4931cfac2a31e0075c859";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen rclcpp ur-client-library ur-robot-driver yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF";
    license = with lib.licenses; [ bsd3 ];
  };
}

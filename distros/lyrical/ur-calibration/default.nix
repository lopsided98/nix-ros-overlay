
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ur_client_library, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, ur-robot-driver, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-ur-calibration";
  version = "5.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/lyrical/ur_calibration/5.0.0-3.tar.gz";
    name = "5.0.0-3.tar.gz";
    sha256 = "f46e21b10981ee2778c77dd0762eb1b9dd9f46177a76ef36f8d80aa45ff3240a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ _unresolved_ur_client_library eigen rclcpp ur-robot-driver yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF";
    license = with lib.licenses; [ bsd3 ];
  };
}

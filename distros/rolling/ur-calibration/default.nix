
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_ur_client_library, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, ur-robot-driver, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-ur-calibration";
  version = "5.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_calibration/5.0.0-2.tar.gz";
    name = "5.0.0-2.tar.gz";
    sha256 = "7c34f9d81ad9b9c92ca68bd53ed3f3d197b7c6aec1c06da3b45b6a6f0be2ea01";
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

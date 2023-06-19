
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, libyamlcpp, rclcpp, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-rolling-ur-calibration";
  version = "2.3.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/rolling/ur_calibration/2.3.2-1.tar.gz";
    name = "2.3.2-1.tar.gz";
    sha256 = "f5666097352cd26aeffa428970638119c1231181edbef80bcf6bbfb72b8a95c5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen libyamlcpp rclcpp ur-client-library ur-robot-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF'';
    license = with lib.licenses; [ bsd3 ];
  };
}

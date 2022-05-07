
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, libyamlcpp, rclcpp, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-galactic-ur-calibration";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_calibration/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "7ae6b267ee730bed8faf9c9ddc93a1c482dfe968f15032c4506978703b2362ed";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen libyamlcpp rclcpp ur-client-library ur-robot-driver ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF'';
    license = with lib.licenses; [ bsd3 ];
  };
}

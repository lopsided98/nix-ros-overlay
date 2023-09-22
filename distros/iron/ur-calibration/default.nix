
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, ur-client-library, ur-robot-driver, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-ur-calibration";
  version = "2.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/iron/ur_calibration/2.3.4-1.tar.gz";
    name = "2.3.4-1.tar.gz";
    sha256 = "7b8b5d44a5a5f580a54e02d4ec9dcc52117c3ba782cba44a4a2b4ad179c55aef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ eigen rclcpp ur-client-library ur-robot-driver yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Package for extracting the factory calibration from a UR robot and change it such that it can be used by ur_description to gain a correct URDF'';
    license = with lib.licenses; [ bsd3 ];
  };
}

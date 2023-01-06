
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, libyamlcpp, rclcpp, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-foxy-ur-calibration";
  version = "2.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/foxy/ur_calibration/2.0.2-2.tar.gz";
    name = "2.0.2-2.tar.gz";
    sha256 = "45d2918cd9139d2b3271fc07c31529a6f84ae2d82bf84c05436615f6dc5ca538";
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

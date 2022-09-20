
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, libyamlcpp, rclcpp, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-galactic-ur-calibration";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/galactic/ur_calibration/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "cff13c3ba6c50f0ce60117f5f24dcb0c4f95869170617ee17655dafe06caf2f6";
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

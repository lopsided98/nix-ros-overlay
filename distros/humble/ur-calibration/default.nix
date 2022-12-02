
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, libyamlcpp, rclcpp, ur-client-library, ur-robot-driver }:
buildRosPackage {
  pname = "ros-humble-ur-calibration";
  version = "2.2.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/humble/ur_calibration/2.2.6-1.tar.gz";
    name = "2.2.6-1.tar.gz";
    sha256 = "72099f1a1d5e81bbb9aafa2723afc8c4df8381d222e7e1d8becdbc6c82f865cb";
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

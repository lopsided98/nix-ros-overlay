
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-lint-auto, ament-lint-common, eigen, rclcpp, ur-client-library, ur-robot-driver, yaml-cpp }:
buildRosPackage {
  pname = "ros-iron-ur-calibration";
  version = "2.3.11-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/Universal_Robots_ROS2_Driver-release/archive/release/iron/ur_calibration/2.3.11-2.tar.gz";
    name = "2.3.11-2.tar.gz";
    sha256 = "1e1f975041156bbf2e420a64706e3a481c6192f03577c7c9a5624eade4c3ea9e";
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

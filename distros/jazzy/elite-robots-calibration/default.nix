
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, elite-cs-series-sdk, launch, launch-ros, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-jazzy-elite-robots-calibration";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/jazzy/elite_robots_calibration/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "2984e56d7ef3270f50883a72693d437c70b11a9eca8e81bfc682095def9ee2a3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ ament-index-cpp eigen elite-cs-series-sdk launch launch-ros rclcpp yaml-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package for extracting the factory calibration from a CS robot and change it such that it can be used by elite_robots_description to gain a correct URDF";
    license = with lib.licenses; [ asl20 ];
  };
}

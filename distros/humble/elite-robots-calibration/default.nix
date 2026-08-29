
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, ament-cmake-gtest, ament-index-cpp, ament-lint-auto, ament-lint-common, eigen, elite-cs-series-sdk, launch, launch-ros, rclcpp, yaml-cpp }:
buildRosPackage {
  pname = "ros-humble-elite-robots-calibration";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/EliteRobots/Elite_Robots_CS_ROS2_Driver-release/archive/release/humble/elite_robots_calibration/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "88b56563c92b14de499ad78c7c07e9c42f9467efc68a9152f56c04c7a113fa50";
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

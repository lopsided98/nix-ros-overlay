
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, costmap-queue, nav2-common, nav-2d-msgs, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, nav2-util, rclcpp, angles, nav-2d-utils, dwb-core, pluginlib, ament-lint-common, launch-testing, sensor-msgs, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-dashing-dwb-critics";
  version = "0.2.4-r1";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/dashing/dwb_critics/0.2.4-1.tar.gz";
    name = "0.2.4-1.tar.gz";
    sha256 = "55bf6b91e21bcf05b97064c122cf158e3719229c284831e390b58a5a038e5dd2";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib sensor-msgs costmap-queue nav2-util nav2-common nav-2d-utils rclcpp nav2-costmap-2d angles dwb-core nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ pluginlib sensor-msgs costmap-queue nav2-util nav-2d-utils rclcpp nav2-costmap-2d angles dwb-core nav-2d-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The dwb_critics package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

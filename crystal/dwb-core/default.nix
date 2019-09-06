
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, nav2-common, nav-2d-msgs, geometry-msgs, ament-cmake-pytest, ament-cmake-gtest, launch, rclcpp, tf2-ros, nav-2d-utils, nav-msgs, std-msgs, visualization-msgs, pluginlib, ament-lint-common, launch-testing, sensor-msgs, dwb-msgs, nav2-costmap-2d, ament-lint-auto }:
buildRosPackage {
  pname = "ros-crystal-dwb-core";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_core/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "eafb4f87e73d2f5c1d33a113563b09617903c56fcb721e661c54ec7632635693";
  };

  buildType = "ament_cmake";
  buildInputs = [ pluginlib sensor-msgs tf2-ros nav2-common nav-2d-utils nav-msgs dwb-msgs nav2-costmap-2d rclcpp std-msgs visualization-msgs nav-2d-msgs geometry-msgs ];
  checkInputs = [ ament-cmake-pytest ament-lint-common launch-testing ament-cmake-gtest launch ament-lint-auto ];
  propagatedBuildInputs = [ pluginlib tf2-ros nav-2d-utils nav-msgs dwb-msgs nav2-costmap-2d rclcpp std-msgs geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

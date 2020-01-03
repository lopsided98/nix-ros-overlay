
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-pytest, ament-lint-auto, ament-lint-common, dwb-msgs, geometry-msgs, launch, launch-testing, nav-2d-msgs, nav-2d-utils, nav-msgs, nav2-common, nav2-costmap-2d, pluginlib, rclcpp, sensor-msgs, std-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-crystal-dwb-core";
  version = "0.1.7";

  src = fetchurl {
    url = "https://github.com/SteveMacenski/navigation2-release/archive/release/crystal/dwb_core/0.1.7-0.tar.gz";
    name = "0.1.7-0.tar.gz";
    sha256 = "eafb4f87e73d2f5c1d33a113563b09617903c56fcb721e661c54ec7632635693";
  };

  buildType = "ament_cmake";
  buildInputs = [ nav-2d-msgs nav2-common sensor-msgs visualization-msgs ];
  checkInputs = [ ament-cmake-gtest ament-cmake-pytest ament-lint-auto ament-lint-common launch launch-testing ];
  propagatedBuildInputs = [ dwb-msgs geometry-msgs nav-2d-utils nav-msgs nav2-costmap-2d pluginlib rclcpp std-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''TODO'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

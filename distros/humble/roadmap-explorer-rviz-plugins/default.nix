
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, qt5, rclcpp, roadmap-explorer-msgs, ros-environment, rviz-common, rviz-rendering, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-roadmap-explorer-rviz-plugins";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roadmap_explorer-release/archive/release/humble/roadmap_explorer_rviz_plugins/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "4ea5233d0d9ab8b5775c00a12100dba672679beed028cb5bfd6c389e4018a779";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ geometry-msgs qt5.qtbase rclcpp roadmap-explorer-msgs rviz-common rviz-rendering sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package that contains an RViz plugins for roadmap_explorer";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libros-bridge, mrpt-msgs, mrpt-nav-interfaces, mrpt-path-planning, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-mrpt-tps-astar-planner";
  version = "2.2.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/kilted/mrpt_tps_astar_planner/2.2.4-1.tar.gz";
    name = "2.2.4-1.tar.gz";
    sha256 = "a018b8ecc547396313f4ff75d8e18e7efaf9498dc4f6585b5ad11a0c109a85eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mrpt-libgui mrpt-libmaps mrpt-libnav mrpt-libros-bridge mrpt-msgs mrpt-nav-interfaces mrpt-path-planning nav-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Path Planner with A* in TP-Space Engine";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

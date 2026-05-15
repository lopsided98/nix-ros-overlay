
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libros-bridge, mrpt-msgs, mrpt-nav-interfaces, mrpt-path-planning, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-tps-astar-planner";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_tps_astar_planner/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "9e4f9c363edd8545e600ac901231d88d95a0658a87568f5d58c639a9160a822c";
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

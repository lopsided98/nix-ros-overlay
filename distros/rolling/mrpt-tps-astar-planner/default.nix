
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-containers, mrpt-gui, mrpt-kinematics, mrpt-libros-bridge, mrpt-maps, mrpt-math, mrpt-msgs, mrpt-nav, mrpt-nav-interfaces, mrpt-opengl, mrpt-path-planning-apps, mrpt-path-planning-core, mrpt-system, mrpt-viz, nav-msgs, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-mrpt-tps-astar-planner";
  version = "2.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_tps_astar_planner/2.7.0-1.tar.gz";
    name = "2.7.0-1.tar.gz";
    sha256 = "4eb0b1e4ed11494217e72ad48149ee506ba291c77c785c26a2b41922d7c0647f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto geometry-msgs mrpt-containers mrpt-gui mrpt-kinematics mrpt-libros-bridge mrpt-maps mrpt-math mrpt-msgs mrpt-nav mrpt-nav-interfaces mrpt-opengl mrpt-path-planning-apps mrpt-path-planning-core mrpt-system mrpt-viz nav-msgs rclcpp rclcpp-action rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Path Planner with A* in TP-Space Engine";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

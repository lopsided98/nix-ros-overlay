
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-containers, mrpt-gui, mrpt-kinematics, mrpt-libros-bridge, mrpt-maps, mrpt-math, mrpt-msgs, mrpt-nav, mrpt-nav-interfaces, mrpt-opengl, mrpt-path-planning-apps, mrpt-path-planning-core, mrpt-system, mrpt-viz, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-tps-astar-planner";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_tps_astar_planner/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "1f8690184acbce480f4decbd8d02f08f4c778a380211bdcc61e26481030aa2ec";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mrpt-containers mrpt-gui mrpt-kinematics mrpt-libros-bridge mrpt-maps mrpt-math mrpt-msgs mrpt-nav mrpt-nav-interfaces mrpt-opengl mrpt-path-planning-apps mrpt-path-planning-core mrpt-system mrpt-viz nav-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Path Planner with A* in TP-Space Engine";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

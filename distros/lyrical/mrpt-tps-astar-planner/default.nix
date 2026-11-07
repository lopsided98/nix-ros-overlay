
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-containers, mrpt-gui, mrpt-kinematics, mrpt-libros-bridge, mrpt-maps, mrpt-math, mrpt-msgs, mrpt-nav, mrpt-nav-interfaces, mrpt-opengl, mrpt-path-planning-apps, mrpt-path-planning-core, mrpt-system, mrpt-viz, nav-msgs, rclcpp, rclcpp-action, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-tps-astar-planner";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_tps_astar_planner/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "216a8642acc32b5f3461dea4f3d23754626bfea8dfdf3b7a388702a57e8c00af";
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

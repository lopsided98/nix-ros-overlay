
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mrpt-msgs, mrpt-nav-interfaces, mrpt-path-planning, mrpt2, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-mrpt-tps-astar-planner";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/humble/mrpt_tps_astar_planner/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "63ebafecd5bb0b327092bf08245e9b762c3bdac6a06711b36b97dc7846d381e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common geometry-msgs mrpt-msgs mrpt-nav-interfaces mrpt-path-planning mrpt2 nav-msgs rclcpp rclcpp-components sensor-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS Path Planner with A* in TP-Space Engine";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

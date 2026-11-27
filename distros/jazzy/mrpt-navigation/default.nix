
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, ament-cmake-lint-cmake, ament-cmake-pytest, ament-cmake-ros, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, launch-testing, launch-testing-ros, mrpt-map-server, mrpt-msgs, mrpt-msgs-bridge, mrpt-nav-interfaces, mrpt-pf-localization, mrpt-pointcloud-pipeline, mrpt-reactivenav2d, mrpt-tps-astar-planner, mrpt-trajectory-follower, mrpt-tutorials, mvsim, nav-msgs, rclpy, sensor-msgs, sensor-msgs-py, std-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-navigation";
  version = "2.9.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_navigation/2.9.0-1.tar.gz";
    name = "2.9.0-1.tar.gz";
    sha256 = "f538ec8e36cf532c13ccdac9273ce6f258bbf5a78bff5617d39784d0d48c0fa6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ action-msgs ament-cmake-pytest ament-cmake-ros geometry-msgs launch-testing launch-testing-ros mrpt-msgs mrpt-nav-interfaces mvsim nav-msgs rclpy sensor-msgs sensor-msgs-py std-msgs tf2-ros-py ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mrpt-map-server mrpt-msgs-bridge mrpt-nav-interfaces mrpt-pf-localization mrpt-pointcloud-pipeline mrpt-reactivenav2d mrpt-tps-astar-planner mrpt-trajectory-follower mrpt-tutorials ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to https://wiki.ros.org/mrpt_navigation for further documentation.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

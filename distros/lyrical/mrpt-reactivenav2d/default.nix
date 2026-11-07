
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-kinematics, mrpt-libros-bridge, mrpt-nav, mrpt-nav-interfaces, nav-msgs, rclcpp, rclcpp-components, sensor-msgs, std-msgs, stereo-msgs, tf2, tf2-geometry-msgs, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-reactivenav2d";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_reactivenav2d/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "5539534aefbd15d2e85dca0243fd7e443f96ec33eae91f28c4ef95b4a9c0909f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto geometry-msgs mrpt-kinematics mrpt-libros-bridge mrpt-nav mrpt-nav-interfaces nav-msgs rclcpp rclcpp-components sensor-msgs std-msgs stereo-msgs tf2 tf2-geometry-msgs tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "DEPRECATED (use mrpt_trajectory_follower with mrpt_tps_astar_planner). Reactive navigation for wheeled robots using MRPT navigation algorithms (TP-Space)";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

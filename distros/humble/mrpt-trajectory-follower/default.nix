
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-containers, mrpt-libros-bridge, mrpt-maps, mrpt-math, mrpt-path-planning-core, mrpt-system, nav-msgs, rclcpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-mrpt-trajectory-follower";
  version = "2.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/humble/mrpt_trajectory_follower/2.6.0-1.tar.gz";
    name = "2.6.0-1.tar.gz";
    sha256 = "1209270ba3065d103e934b4d66f95a5216d2cca158a5cd82158d068cbbf96ab0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  propagatedBuildInputs = [ geometry-msgs mrpt-containers mrpt-libros-bridge mrpt-maps mrpt-math mrpt-path-planning-core mrpt-system nav-msgs rclcpp sensor-msgs std-msgs tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 node that accurately follows a reference trajectory with minimal predictive safety, wrapping mpp::TrajectoryFollower";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

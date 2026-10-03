
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, geometry-msgs, mrpt-containers, mrpt-libros-bridge, mrpt-maps, mrpt-math, mrpt-path-planning-core, mrpt-system, nav-msgs, rclcpp, sensor-msgs, std-msgs, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-mrpt-trajectory-follower";
  version = "2.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/lyrical/mrpt_trajectory_follower/2.6.1-1.tar.gz";
    name = "2.6.1-1.tar.gz";
    sha256 = "9ba442e9517d345aa5dafc0a563f67feaf360dc200b95ce242bce8825372a479";
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

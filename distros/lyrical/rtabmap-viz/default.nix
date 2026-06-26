
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, rclcpp, ros-environment, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-lyrical-rtabmap-viz";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/lyrical/rtabmap_viz/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "0b268411c70866fda1548406aedbbdf071c107921a6aa2d32577da426dde6a3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs rclcpp rtabmap-msgs rtabmap-sync std-msgs std-srvs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's visualization package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, rclcpp, ros-environment, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-humble-rtabmap-viz";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_viz/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "d85150778dc103fbb34b389d7870ac5e0d5e4ff0e297336aa419990188da63af";
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

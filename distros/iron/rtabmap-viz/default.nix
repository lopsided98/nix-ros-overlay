
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, rclcpp, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-iron-rtabmap-viz";
  version = "0.21.3-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_viz/0.21.3-1.tar.gz";
    name = "0.21.3-1.tar.gz";
    sha256 = "efac12b78907d279ef9bfc43bfe284a58d2f19c599e12b37cdcb24c844817c20";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs rclcpp rtabmap-msgs rtabmap-sync std-msgs std-srvs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''RTAB-Map's visualization package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

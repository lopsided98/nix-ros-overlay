
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, rclcpp, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-viz";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_viz/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "89588fe27741b5233a362c45c95c8d253bea202f50768ac7f0474aaadadaa5c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs rclcpp rtabmap-msgs rtabmap-sync std-msgs std-srvs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's visualization package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

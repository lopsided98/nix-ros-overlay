
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, rclcpp, rtabmap-msgs, rtabmap-sync, std-msgs, std-srvs, tf2 }:
buildRosPackage {
  pname = "ros-humble-rtabmap-viz";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_viz/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "6bdd471f43acf7834dfb82c459fb47ab2923407cd70f18867f36c89c6fafb569";
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

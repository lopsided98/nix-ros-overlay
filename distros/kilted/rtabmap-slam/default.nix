
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, apriltag-msgs, cv-bridge, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-slam";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_slam/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "c8d3b29beb732d00c573c2ede33d5bd58b14e2a59886be17b331512c37784c47";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ apriltag-msgs cv-bridge geometry-msgs nav-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

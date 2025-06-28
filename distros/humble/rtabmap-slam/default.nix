
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, apriltag-msgs, cv-bridge, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-components, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-slam";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_slam/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "f56e8197cc311fe049c6b7b8cb6a8c7fe24664c2922b2ff861ffa1177a60ff7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ apriltag-msgs cv-bridge geometry-msgs nav-msgs nav2-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

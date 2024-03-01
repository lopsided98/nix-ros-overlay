
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-geometry, laser-geometry, pcl-conversions, rclcpp, rclcpp-components, ros-environment, rtabmap, rtabmap-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-iron-rtabmap-conversions";
  version = "0.21.4-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_conversions/0.21.4-2.tar.gz";
    name = "0.21.4-2.tar.gz";
    sha256 = "1c691506c24c76b75c48d4729267eec2e573b1942bf1c42cb63a54ecf863d810";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry laser-geometry pcl-conversions rclcpp rclcpp-components rtabmap rtabmap-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RTAB-Map's conversions package. This package can be used to convert rtabmap_msgs's msgs into RTAB-Map's library objects.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

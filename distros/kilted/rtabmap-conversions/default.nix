
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-geometry, laser-geometry, pcl-conversions, rclcpp, rclcpp-components, ros-environment, rtabmap, rtabmap-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-conversions";
  version = "0.22.0-r2";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_conversions/0.22.0-2.tar.gz";
    name = "0.22.0-2.tar.gz";
    sha256 = "d55b4a47771b6dfff352e9a86ce0346ffe77fbbc30d5e8e78af8f3de38443d5b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry laser-geometry pcl-conversions rclcpp rclcpp-components rtabmap rtabmap-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's conversions package. This package can be used to convert rtabmap_msgs's msgs into RTAB-Map's library objects.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

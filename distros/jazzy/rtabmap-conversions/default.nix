
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-geometry, laser-geometry, pcl-conversions, rclcpp, rclcpp-components, ros-environment, rtabmap, rtabmap-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-conversions";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_conversions/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "2fe6fb5bb45597680c52d8a0157d67dfde8021f9bd51b5d235e4a7deebff5d8b";
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

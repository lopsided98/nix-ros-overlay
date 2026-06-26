
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, cv-bridge, geometry-msgs, image-geometry, laser-geometry, pcl-conversions, rclcpp, rclcpp-components, ros-environment, rtabmap, rtabmap-msgs, sensor-msgs, std-msgs, tf2, tf2-eigen, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-humble-rtabmap-conversions";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_conversions/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "3aec91587a8e630f057a77ff11a22894209574dc62f7b2efd373d030d647cc12";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs image-geometry laser-geometry pcl-conversions rclcpp rclcpp-components rtabmap rtabmap-msgs sensor-msgs std-msgs tf2 tf2-eigen tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RTAB-Map's conversions package. This package can be used to convert rtabmap_msgs's msgs into RTAB-Map's library objects.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

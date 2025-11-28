
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-navmap-ros";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_ros/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "8c366a0987af363623fc4f0150248a65f07d43174cdb4c968cf736c5d89d5b24";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-msgs navmap-core navmap-ros-interfaces pcl-conversions pcl-ros rclcpp sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between navmap_core and ROS messages";
    license = with lib.licenses; [ asl20 ];
  };
}

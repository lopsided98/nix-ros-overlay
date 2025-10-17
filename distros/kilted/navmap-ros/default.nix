
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, navmap-core, navmap-ros-interfaces, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-navmap-ros";
  version = "0.2.3-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_ros/0.2.3-1.tar.gz";
    name = "0.2.3-1.tar.gz";
    sha256 = "962274b7f442335c1b62421e8beee79f2ce1f59081a035c0cbb814b384b22b48";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs navmap-core navmap-ros-interfaces pcl-conversions pcl-ros rclcpp sensor-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between navmap_core and ROS messages";
    license = with lib.licenses; [ asl20 ];
  };
}

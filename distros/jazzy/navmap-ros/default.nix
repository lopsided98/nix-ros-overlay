
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-navmap-ros";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_ros/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "1b244ab65dbaba61a2c2161c14ae1f84f07e285490952a6c8b5e41eefa3e21a3";
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

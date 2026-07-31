
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-navmap-ros";
  version = "0.5.1-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_ros/0.5.1-1.tar.gz";
    name = "0.5.1-1.tar.gz";
    sha256 = "b2a1ecb9f1647bdede2b1a4646751b79440e905c3fe60e072376c3a86897d6a1";
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

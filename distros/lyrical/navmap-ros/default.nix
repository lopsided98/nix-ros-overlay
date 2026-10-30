
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl, pcl-conversions, rclcpp, sensor-msgs, std-msgs, std-srvs, zlib }:
buildRosPackage {
  pname = "ros-lyrical-navmap-ros";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/lyrical/navmap_ros/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "ba38cc01ab54ffa9517003630f6d136757cbbb23a29efa3efba297b09ee58b2d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ament-lint-auto ];
  propagatedBuildInputs = [ eigen geometry-msgs nav-msgs navmap-core navmap-ros-interfaces pcl pcl-conversions rclcpp sensor-msgs std-msgs std-srvs zlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Conversions between navmap_core and ROS messages";
    license = with lib.licenses; [ asl20 ];
  };
}

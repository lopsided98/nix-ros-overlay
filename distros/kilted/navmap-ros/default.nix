
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl, pcl-conversions, rclcpp, sensor-msgs, std-msgs, std-srvs, zlib }:
buildRosPackage {
  pname = "ros-kilted-navmap-ros";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/kilted/navmap_ros/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "dbfc4949404b8bdbbf12dfc0bf7199ca5aa8e64d37c4b488051a755d12f74c1b";
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

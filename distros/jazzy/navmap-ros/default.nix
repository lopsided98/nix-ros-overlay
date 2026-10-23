
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, ament-lint-auto, eigen, geometry-msgs, nav-msgs, navmap-core, navmap-ros-interfaces, pcl, pcl-conversions, rclcpp, sensor-msgs, std-msgs, std-srvs, zlib }:
buildRosPackage {
  pname = "ros-jazzy-navmap-ros";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_ros/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "7eeb35061b8404dfa61f1a8c2383a71a15c46fcc513fd21cfddb67e0779c7d7a";
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


# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, navmap-core, navmap-ros-interfaces, pcl-conversions, pcl-ros, rclcpp, sensor-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-navmap-ros";
  version = "0.2.4-r2";

  src = fetchurl {
    url = "https://github.com/EasyNavigation/NavMap-release/archive/release/jazzy/navmap_ros/0.2.4-2.tar.gz";
    name = "0.2.4-2.tar.gz";
    sha256 = "689ac725b5f90d16e45bf00dc6a16cf961b93b7b70b08b975fa11e975a6bbaee";
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

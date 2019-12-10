
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-pcl-conversions";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/eloquent/pcl_conversions/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "4f3a74163e827b205fb807534510f6e919298c8363be84608f11ae4b4bdde4b9";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen message-filters pcl pcl-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

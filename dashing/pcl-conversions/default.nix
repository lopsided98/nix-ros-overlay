
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, sensor-msgs, message-filters, std-msgs, pcl-msgs, ament-cmake, pcl, eigen, rclcpp, ament-cmake-gtest }:
buildRosPackage {
  pname = "ros-dashing-pcl-conversions";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/dashing/pcl_conversions/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "7e5a799ac5e1a196d385a9247cffabe2b8589c554b22a4a1cb10896ff3bfcb07";
  };

  buildType = "ament_cmake";
  buildInputs = [ sensor-msgs message-filters std-msgs pcl-msgs pcl eigen rclcpp ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ sensor-msgs message-filters std-msgs pcl-msgs pcl eigen rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

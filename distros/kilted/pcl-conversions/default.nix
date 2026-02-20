
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-pcl-conversions";
  version = "2.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/kilted/pcl_conversions/2.8.0-1.tar.gz";
    name = "2.8.0-1.tar.gz";
    sha256 = "0b326d84d8615c8c9bb3571f39404586632c7146fdf024ed967efc973592b9ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen message-filters pcl pcl-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides conversions from PCL data types and ROS message types";
    license = with lib.licenses; [ bsd3 ];
  };
}

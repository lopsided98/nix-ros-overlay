
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-pcl-conversions";
  version = "2.4.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/iron/pcl_conversions/2.4.0-5.tar.gz";
    name = "2.4.0-5.tar.gz";
    sha256 = "5d5d1d4abe918ec220110e22c4f014cbc50d56464a7b940a4ce2738bd27d138e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen message-filters pcl pcl-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

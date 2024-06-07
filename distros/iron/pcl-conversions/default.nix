
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-pcl-conversions";
  version = "2.5.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/iron/pcl_conversions/2.5.4-1.tar.gz";
    name = "2.5.4-1.tar.gz";
    sha256 = "727155eb1acf9b327a3c539476fb6cc08dd2e6ef07e68cb435afaeb4dc84c74b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ eigen message-filters pcl pcl-msgs rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Provides conversions from PCL data types and ROS message types";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

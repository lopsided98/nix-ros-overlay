
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-pcl-conversions";
  version = "2.7.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/rolling/pcl_conversions/2.7.4-1.tar.gz";
    name = "2.7.4-1.tar.gz";
    sha256 = "59ed98efd705ee34c565c58b7a7722b97161daf4f96277f7ab7f3a0a5a7a4aa6";
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

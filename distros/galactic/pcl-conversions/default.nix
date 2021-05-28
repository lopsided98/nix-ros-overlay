
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-pcl-conversions";
  version = "2.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/galactic/pcl_conversions/2.3.1-1.tar.gz";
    name = "2.3.1-1.tar.gz";
    sha256 = "515d57d5d209715628421d2fd6080c9d3251197b9482272b859a8a94f088c54b";
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

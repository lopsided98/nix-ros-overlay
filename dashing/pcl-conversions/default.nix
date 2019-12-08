
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, pcl, ament-cmake-gtest, sensor-msgs, message-filters, rclcpp, pcl-msgs, std-msgs, eigen }:
buildRosPackage {
  pname = "ros-dashing-pcl-conversions";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/dashing/pcl_conversions/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "1dee570593be56530a89248cd15ba13a1eb72daad1c1a4d452ed7b396db8a134";
  };

  buildType = "ament_cmake";
  buildInputs = [ pcl sensor-msgs message-filters rclcpp pcl-msgs std-msgs eigen ];
  checkInputs = [ ament-cmake-gtest ];
  propagatedBuildInputs = [ pcl sensor-msgs message-filters rclcpp pcl-msgs std-msgs eigen ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides conversions from PCL data types and ROS message types'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

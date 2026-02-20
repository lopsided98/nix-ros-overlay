
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pcl-conversions";
  version = "2.6.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/jazzy/pcl_conversions/2.6.4-1.tar.gz";
    name = "2.6.4-1.tar.gz";
    sha256 = "5d376e9a36a78dde7d91ac4defe8771225e733fbdedd8c00736509337a351973";
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

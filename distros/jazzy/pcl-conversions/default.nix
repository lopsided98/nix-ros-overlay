
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-pcl-conversions";
  version = "2.6.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/jazzy/pcl_conversions/2.6.2-1.tar.gz";
    name = "2.6.2-1.tar.gz";
    sha256 = "9f817bd5164051fedcca6b9912d14c93b25cf2e6702bcf16490df783b12ae7e9";
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

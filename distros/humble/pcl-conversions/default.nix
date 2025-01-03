
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gtest, eigen, message-filters, pcl, pcl-msgs, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-pcl-conversions";
  version = "2.4.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/perception_pcl-release/archive/release/humble/pcl_conversions/2.4.5-2.tar.gz";
    name = "2.4.5-2.tar.gz";
    sha256 = "289ad37ad62cc33e380db6d2f0a9585028ed0cd2932da4a4cf3f1220bfdaeeba";
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

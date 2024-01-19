
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rclcpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ess-imu-driver2";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ess_imu_driver2-release/archive/release/humble/ess_imu_driver2/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "718457f68dc25b0bfe622b15eedf18ac709021be362f2c712b5944440bd874da";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rclcpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ROS2 package for Epson IMU based on C++ wrapper of Linux C driver'';
    license = with lib.licenses; [ bsd3 publicDomain ];
  };
}

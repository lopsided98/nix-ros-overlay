
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, pluginlib, rclcpp }:
buildRosPackage {
  pname = "ros-humble-kuka-mock-hardware-interface";
  version = "1.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_mock_hardware_interface/1.1.2-1.tar.gz";
    name = "1.1.2-1.tar.gz";
    sha256 = "c28cc9fa5dd55b1cd2ef04b3905f9d9d45d94b917bcb0afe30511c022af4c9e3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface pluginlib rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 control mock hardware for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}

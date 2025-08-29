
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-mock-hardware-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_mock_hardware_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "6f6d959a8bd46e14f7872ac67146ae85fd8020d263c95d96cca94c857718227b";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ hardware-interface pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 control mock hardware for KUKA robots";
    license = with lib.licenses; [ asl20 ];
  };
}

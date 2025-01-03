
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, hardware-interface, pluginlib }:
buildRosPackage {
  pname = "ros-humble-kuka-mock-hardware-interface";
  version = "0.9.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_robot_descriptions-release/archive/release/humble/kuka_mock_hardware_interface/0.9.0-2.tar.gz";
    name = "0.9.0-2.tar.gz";
    sha256 = "ffcdac3c5b5b33096d22e734c5fd0e04cac0b3d7ec04c0a8994a57c05a1bd056";
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

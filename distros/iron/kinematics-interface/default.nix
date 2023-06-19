
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-kinematics-interface";
  version = "0.1.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/iron/kinematics_interface/0.1.0-3.tar.gz";
    name = "0.1.0-3.tar.gz";
    sha256 = "93446dd9e4ec1e1069d980479d5ac270b275ec21dac0f0113c2950db3e4f6a1a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Kinematics interface for ROS 2 control'';
    license = with lib.licenses; [ asl20 ];
  };
}

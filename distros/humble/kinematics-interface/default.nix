
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-kinematics-interface";
  version = "0.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/humble/kinematics_interface/0.4.3-1.tar.gz";
    name = "0.4.3-1.tar.gz";
    sha256 = "480f32f35248d132ed49ecb6941cc6ae38fedc7449f3a54a5c2758bd0dae2170";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}

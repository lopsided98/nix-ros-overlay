
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, backward-ros, eigen, rclcpp-lifecycle, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-jazzy-kinematics-interface";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/jazzy/kinematics_interface/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "74654e360715e06c2939f18c519515c98d3b0412954c67b03b0da3f8a5cece46";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  propagatedBuildInputs = [ backward-ros eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}


# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-kinematics-interface";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/humble/kinematics_interface/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "0dfa527ba88ad9f6d300430c563aa8a273f5edd9f244639a99a2d048f2822f69";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}

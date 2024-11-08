
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-kinematics-interface";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/iron/kinematics_interface/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "5797fbd2c13be4411539c8ca812d0bbed69d10eac5892e25f48058ba577badc4";
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

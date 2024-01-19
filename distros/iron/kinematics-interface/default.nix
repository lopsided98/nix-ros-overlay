
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-kinematics-interface";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/iron/kinematics_interface/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "3edf5bb04225ab9dada9702a8a8d2e1c9f80a087ce24dc96e4d60f996866a2cf";
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

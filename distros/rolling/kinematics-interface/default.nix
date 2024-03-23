
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/rolling/kinematics_interface/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "f49d49a8248515161e7f399c5a517a11b1c9f7dec12a9f75fa236b08782113a3";
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

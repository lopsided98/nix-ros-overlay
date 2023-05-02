
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-kinematics-interface";
  version = "0.1.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/rolling/kinematics_interface/0.1.0-2.tar.gz";
    name = "0.1.0-2.tar.gz";
    sha256 = "80259cbf88e38edaedc0ba93179f92bf98c2130c15d0dc35d941227aeb07efa1";
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

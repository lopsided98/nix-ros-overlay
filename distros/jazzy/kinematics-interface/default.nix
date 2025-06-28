
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-jazzy-kinematics-interface";
  version = "1.4.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/jazzy/kinematics_interface/1.4.0-1.tar.gz";
    name = "1.4.0-1.tar.gz";
    sha256 = "09a59b9be24bba54bd7c23d5e4639eeeebdfff84000018db1341c570f85830c2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  propagatedBuildInputs = [ eigen rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Kinematics interface for ROS 2 control";
    license = with lib.licenses; [ asl20 ];
  };
}

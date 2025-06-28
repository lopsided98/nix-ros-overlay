
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle, ros2-control-cmake }:
buildRosPackage {
  pname = "ros-kilted-kinematics-interface";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/kilted/kinematics_interface/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "8b162c71fd0961b432e37856f487410aa9a147ab66d57c9a009a8b9541cb9974";
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

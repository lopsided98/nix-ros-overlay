
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, eigen, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-humble-kinematics-interface";
  version = "0.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kinematics_interface-release/archive/release/humble/kinematics_interface/0.2.0-1.tar.gz";
    name = "0.2.0-1.tar.gz";
    sha256 = "eee2f00cca92e0748c0a9eff451d4e839748ebaa9f9fce5e6a5596ad5b38f5dc";
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

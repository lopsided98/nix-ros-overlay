
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-four-wheel-steering-msgs";
  version = "2.0.1-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/four_wheel_steering_msgs-release/archive/release/lyrical/four_wheel_steering_msgs/2.0.1-7.tar.gz";
    name = "2.0.1-7.tar.gz";
    sha256 = "f0f78615fc9e6181b9e01906aa522c2cef5821c110da3d4385a1811fd7f23f7d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS messages for robots using FourWheelSteering.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}

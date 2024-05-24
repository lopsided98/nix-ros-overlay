
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-four-wheel-steering-msgs";
  version = "2.0.1-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/four_wheel_steering_msgs-release/archive/release/jazzy/four_wheel_steering_msgs/2.0.1-6.tar.gz";
    name = "2.0.1-6.tar.gz";
    sha256 = "64d4cfec5a5947c3ed6d70821f5a02a950ce00cfb322a83a413d00f8d11f92b3";
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

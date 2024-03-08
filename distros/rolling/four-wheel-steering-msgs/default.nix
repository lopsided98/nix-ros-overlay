
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-four-wheel-steering-msgs";
  version = "2.0.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/four_wheel_steering_msgs-release/archive/release/rolling/four_wheel_steering_msgs/2.0.1-5.tar.gz";
    name = "2.0.1-5.tar.gz";
    sha256 = "8b87595ab160ef1e751ef9a29144d9e73b48943a7c176d0c467dec4e0fbb0be0";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS messages for robots using FourWheelSteering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

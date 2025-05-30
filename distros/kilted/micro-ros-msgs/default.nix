
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-micro-ros-msgs";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/micro_ros_msgs-release/archive/release/kilted/micro_ros_msgs/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "717380263696ad6a95071f45ad6e2532c851f5b26108804c1653ce383d8a81d3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Definitions for the ROS 2 msgs entities information used by micro-ROS to leverage its functionality to the same level as ROS 2, by means of a dedicated graph manager";
    license = with lib.licenses; [ asl20 ];
  };
}

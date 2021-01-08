
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-dashing-ros-monitoring-msgs";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/ros_monitoring_msgs-release/archive/release/dashing/ros_monitoring_msgs/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "e64f86f822651ad1310f7d0c585a7dcac9d8e14f613a71f28fac2fb56b412d3e";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for publishing monitoring data about ROS systems'';
    license = with lib.licenses; [ asl20 ];
  };
}

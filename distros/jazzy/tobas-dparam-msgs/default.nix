
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-jazzy-tobas-dparam-msgs";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_dparam_msgs/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "e75b52460787e572e19d2cb40de23a506eecf9d2b9e837baff4aeb5a5fd7b799";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 messages and services for typed dynamic parameters.";
    license = with lib.licenses; [ asl20 ];
  };
}

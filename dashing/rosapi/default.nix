
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, ros2node, rclpy, rosidl-default-generators, rosbridge-library, ros2param, rcl-interfaces, ament-cmake-ros, ros2pkg, rosidl-default-runtime, ros2service, ros2topic }:
buildRosPackage {
  pname = "ros-dashing-rosapi";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/dashing/rosapi/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f1c7f1d3cc9d553908aa3955269cd3801f6f22cbd7e21f19c01574438366f551";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces ];
  propagatedBuildInputs = [ builtin-interfaces ros2node rclpy rosbridge-library ros2param rcl-interfaces ros2pkg rosidl-default-runtime ros2service ros2topic ];
  nativeBuildInputs = [ rosidl-default-generators ament-cmake-ros ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}

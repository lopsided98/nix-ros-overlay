
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-pendulum-msgs";
  version = "0.7.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/pendulum_msgs/0.7.8-1.tar.gz";
    name = "0.7.8-1.tar.gz";
    sha256 = "7953c4b698f9abbf793fb2362996abe829125de9a1f935a6144b27871f3c1fa8";
  };

  buildType = "ament_cmake";
  buildInputs = [ builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for real-time pendulum control.'';
    license = with lib.licenses; [ asl20 ];
  };
}

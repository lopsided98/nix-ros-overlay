
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, builtin-interfaces, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-pendulum-msgs";
  version = "0.7.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/dashing/pendulum_msgs/0.7.9-1.tar.gz";
    name = "0.7.9-1.tar.gz";
    sha256 = "3c5f69a6f88c9ff9a70717b012708c6f747c336505ecfe43540c453f607d0b2e";
  };

  buildType = "ament_cmake";
  buildInputs = [ rosidl-default-generators builtin-interfaces ];
  propagatedBuildInputs = [ rosidl-default-runtime builtin-interfaces ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Custom messages for real-time pendulum control.'';
    license = with lib.licenses; [ asl20 ];
  };
}

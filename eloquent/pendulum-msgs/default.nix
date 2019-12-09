
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosidl-default-runtime, rosidl-default-generators, builtin-interfaces, ament-cmake }:
buildRosPackage {
  pname = "ros-eloquent-pendulum-msgs";
  version = "0.8.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/eloquent/pendulum_msgs/0.8.4-1.tar.gz";
    name = "0.8.4-1.tar.gz";
    sha256 = "dbf2d8bc82b267466cf8e775eafbc15706ae667cf6566e2828c292b8638072a0";
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
